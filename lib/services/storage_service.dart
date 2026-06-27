import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import '../model/task.dart';

class StorageService {
  static const String taskKey = "tasks";

  static Future<void> saveTasks(List<Task> tasks) async {
    final prefs = await SharedPreferences.getInstance();

    List<String> taskList =
    tasks.map((task) => jsonEncode(task.toMap())).toList();

    await prefs.setStringList(taskKey, taskList);
  }

  static Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();

    final List<String>? taskList =
    prefs.getStringList(taskKey);

    if (taskList == null) {
      return [];
    }

    return taskList
        .map((task) => Task.fromMap(jsonDecode(task)))
        .toList();
  }
}