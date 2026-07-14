Flutter Task Management App

A simple Task Management application built with Flutter as part of the Flutter Internship Week 6 assignment.

The application allows users to create, manage, and organize daily tasks. Users can add tasks, mark tasks as completed, and delete tasks. Task data is stored locally using SharedPreferences, ensuring that tasks remain available even after the application is closed and reopened.

In this updated version, Provider is used for state management, replacing direct state handling, and smooth animations have been added to improve the overall user experience.

Features

* Splash Screen
* View all tasks
* Add new tasks
* Mark tasks as completed
* Delete tasks
* Persistent local storage using SharedPreferences
* State management using Provider
* Smooth task animations
* Clean and user-friendly interface

Technologies Used

* Flutter
* Dart
* Provider
* SharedPreferences

Project Structure

lib/
├── main.dart
├── models/
│   └── task.dart
├── providers/
│   └── task_provider.dart
├── screens/
│   ├── splash_screen.dart
│   └── home_screen.dart
└── services/
    └── storage_service.dart

Installation & Setup

1. Clone the repository

git clone https://github.com/afsheenn2024-sudo/flutter_week3_task.git

2. Navigate to the project folder

cd flutter_week3_task

3. Install dependencies

flutter pub get

4. Run the application

flutter run

How to Use

1. Launch the application.
2. Wait for the splash screen to complete.
3. Tap the + button to add a new task.
4. Enter the task name and save it.
5. Tap the checkbox to mark a task as completed.
6. Tap the delete icon to remove a task.
7. Restart the application to verify that tasks are saved locally.

Testing

The application was tested to verify that:

* Splash screen navigation works correctly.
* Tasks can be added successfully.
* Tasks can be marked as completed.
* Tasks can be deleted.
* Task data is saved using SharedPreferences.
* Saved tasks remain available after restarting the application.
* Provider state management updates the UI correctly.
* Animations work smoothly.

Repository

GitHub Repository:

flutter_week3_task
