import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_hello_world/main.dart';

void main() {
  testWidgets('Can add a todo item', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    // Verify empty state message
    expect(find.text('No tasks yet — add one above!'), findsOneWidget);

    // Type a task and tap Add
    await tester.enterText(find.byType(TextField), 'Buy groceries');
    await tester.tap(find.text('Add'));
    await tester.pump();

    // Verify the task appears
    expect(find.text('Buy groceries'), findsOneWidget);
    expect(find.text('No tasks yet — add one above!'), findsNothing);
  });

  testWidgets('Can complete a todo item', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    // Add a task
    await tester.enterText(find.byType(TextField), 'Walk the dog');
    await tester.tap(find.text('Add'));
    await tester.pump();

    // Toggle checkbox
    await tester.tap(find.byType(Checkbox));
    await tester.pump();

    // The task should still be visible (with strikethrough, but we can verify the checkbox)
    final checkbox = tester.widget<Checkbox>(find.byType(Checkbox));
    expect(checkbox.value, isTrue);
  });

  testWidgets('Can delete a todo item', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    // Add a task
    await tester.enterText(find.byType(TextField), 'Clean house');
    await tester.tap(find.text('Add'));
    await tester.pump();

    // Delete it
    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pump();

    // Should be back to empty state
    expect(find.text('Clean house'), findsNothing);
    expect(find.text('No tasks yet — add one above!'), findsOneWidget);
  });
}
