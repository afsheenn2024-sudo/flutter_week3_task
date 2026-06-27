# Flutter Task Management App

A simple Task Management application built with Flutter as part of the Flutter Internship Week 3 assignment.

The application allows users to create, manage, and organize daily tasks. Users can add new tasks, mark tasks as completed, and delete tasks. Task data is stored locally using **SharedPreferences**, ensuring that all tasks remain available even after the application is closed and reopened.

## Features

* Splash Screen
* View all tasks
* Add new tasks
* Mark tasks as completed
* Delete tasks
* Persistent local storage using SharedPreferences
* Simple and user-friendly interface

## Technologies Used

* Flutter
* Dart
* SharedPreferences

## Project Structure

```text
lib/
├── main.dart
├── model/
│   └── task.dart
├── screens/
│   ├── splash_screen.dart
│   └── home_screen.dart
└── services/
    └── storage_service.dart
```

## Installation & Setup

### 1. Clone the repository

```bash
git clone https://github.com/afsheenn2024-sudo/flutter_week3_task.git
```

### 2. Open the project

```bash
cd flutter_week3_task
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

## How to Use

1. Launch the application.
2. Wait for the splash screen to complete.
3. Tap the **+** button to add a new task.
4. Enter a task name and tap **Add**.
5. Tap the checkbox to mark a task as completed.
6. Tap the delete icon to remove a task.
7. Restart the application to verify that tasks are saved locally.

## Testing

The application was tested to verify that:

* The splash screen navigates correctly to the home screen.
* New tasks can be added successfully.
* Tasks can be marked as completed.
* Tasks can be deleted.
* Task data is saved using SharedPreferences.
* Saved tasks remain available after restarting the application.

## Repository

GitHub Repository:

https://github.com/afsheenn2024-sudo/flutter_week3_task
