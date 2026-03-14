# Flutter To-Do App

A simple to-do list app built with Flutter. Runs on Chrome, iOS, and Android.

## Features

- Add tasks using the text field and "Add" button (or press Enter)
- Mark tasks complete with the checkbox (adds strikethrough styling)
- Delete tasks with the trash icon
- Material 3 design with a teal color scheme

## Prerequisites

- [FVM](https://fvm.app/) (Flutter Version Management)
- Flutter 3.41.4 (installed via `fvm install 3.41.4`)

## Getting Started

Install dependencies:

```bash
fvm flutter pub get
```

## Running the App

**Chrome (Web):**

```bash
fvm flutter run -d chrome
```

**iOS Simulator:**

```bash
fvm flutter run -d iphone
```

Or open `ios/Runner.xcworkspace` in Xcode and run from there.

**Android Emulator:**

```bash
fvm flutter run -d android
```

Make sure you have an Android emulator running or a device connected.

## Running Tests

```bash
fvm flutter test
```

## Project Structure

```
lib/
  main.dart       # App entry point, TodoApp widget, and TodoHomePage
test/
  widget_test.dart # Widget tests for add, complete, and delete functionality
```
