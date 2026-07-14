# Flutter Task Manager App

A simple **Task Management Application** developed using Flutter as part of the **Flutter Internship Week 6 Final Project**.

The application allows users to create, manage, and organize daily tasks. Users can add new tasks, mark tasks as completed, and delete tasks. Task data is stored locally using **SharedPreferences**, ensuring that tasks remain available even after the application is closed and reopened.

This updated version uses **Provider** for state management and includes smooth animations to improve the overall user experience.

## Project Overview

The objective of this project is to develop a functional Task Management application with:

- A home screen displaying a list of tasks
- Functionality to add new tasks
- Ability to delete tasks
- Ability to mark tasks as completed
- Local data persistence using SharedPreferences
- State management using Provider
- Improved UI experience with animations

## Features

### Task Management

- View all tasks
- Add new tasks
- Mark tasks as completed
- Delete tasks
- Save tasks locally
- Restore tasks after application restart

### User Interface

- Splash screen
- Clean and simple UI design
- Smooth task animations
- User-friendly interaction

### Data Management

- SharedPreferences for local storage
- Provider for efficient state management
- Automatic UI updates when task data changes

## Technologies Used

- Flutter
- Dart
- Provider
- SharedPreferences

## Project Structure

```text
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
```

## Installation and Setup

### 1. Clone the Repository

```bash
git clone https://github.com/afsheenn2024-sudo/flutter_week3_task.git
```

### 2. Navigate to Project Folder

```bash
cd flutter_week3_task
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Run the Application

```bash
flutter run
```

## Application Workflow

1. Launch the application.
2. View the splash screen.
3. Navigate to the home screen.
4. Add tasks using the add button.
5. Mark tasks as completed using the checkbox.
6. Delete tasks when required.
7. Restart the application to verify saved data.

## Testing and Debugging

The application was tested to verify:

- Splash screen navigation works correctly.
- Tasks can be added successfully.
- Tasks can be marked as completed.
- Tasks can be deleted.
- Data remains saved after restarting the application.
- SharedPreferences stores task data correctly.
- Provider updates the UI correctly.
- Animations work smoothly without issues.
