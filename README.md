Flutter Task Manager App

A simple Task Management Application developed using Flutter as part of the Flutter Internship Week 6 Final Project.

The application allows users to manage their daily tasks efficiently. Users can create new tasks, mark tasks as completed, delete tasks, and store task data locally. The project uses Provider for state management and SharedPreferences for local data persistence.

Project Overview

The goal of this project is to build a functional Task Management application with:

* A home screen displaying a list of tasks
* Ability to add, delete, and complete tasks
* Local data storage for saving tasks
* Efficient state management using Provider
* Improved user interface with animations

Features

Task Management

* View all tasks on the home screen
* Add new tasks
* Mark tasks as completed
* Delete tasks
* Maintain task data after app restart

User Interface

* Splash screen
* Clean and simple UI design
* Smooth task list animations
* User-friendly navigation

Data Management

* Local storage using SharedPreferences
* State management using Provider
* Automatic UI updates when task data changes

Technologies Used

* Flutter - Application development framework
* Dart - Programming language
* Provider - State management solution
* SharedPreferences - Local data persistence

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

Installation and Setup

Clone Repository

git clone https://github.com/afsheenn2024-sudo/flutter_week3_task.git

Open Project Folder

cd flutter_week3_task

Install Dependencies

flutter pub get

Run Application

flutter run

Application Workflow

1. Launch the application.
2. View the splash screen.
3. Navigate to the task home screen.
4. Add new tasks using the add button.
5. Mark tasks as completed using the checkbox.
6. Delete tasks when required.
7. Restart the application to verify saved data.

Testing and Debugging

The application was tested to ensure:

* Splash screen navigation works correctly.
* Tasks can be added successfully.
* Tasks can be marked as completed.
* Tasks can be deleted.
* Task data remains available after restarting the application.
* SharedPreferences stores data correctly.
* Provider updates the UI efficiently.
* Animations work smoothly without errors.

Future Enhancements

* Firebase Authentication
* Cloud Firestore synchronization
* Task categories and priorities
* Push notifications and reminders

Repository

GitHub Repository:

flutter_week3_task
