import 'package:flutter/material.dart';

import '../model/task.dart';
import '../services/storage_service.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  TaskProvider() {
    loadTasks();
  }

  Future<void> loadTasks() async {
    _tasks = await StorageService.loadTasks();
    notifyListeners();
  }

  Future<void> saveTasks() async {
    await StorageService.saveTasks(_tasks);
  }

  Future<void> addTask(String title) async {
    if (title.trim().isEmpty) return;

    _tasks.add(
      Task(
        title: title.trim(),
        isCompleted: false,
      ),
    );

    await saveTasks();
    notifyListeners();
  }

  Future<void> toggleTask(int index) async {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;

    await saveTasks();
    notifyListeners();
  }

  Future<void> deleteTask(int index) async {
    _tasks.removeAt(index);

    await saveTasks();
    notifyListeners();
  }
}