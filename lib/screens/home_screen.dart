import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task.dart';
import '../providers/task_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController taskController =
  TextEditingController();

  Future<void> deleteTask(int index) async {
    final taskProvider =
    Provider.of<TaskProvider>(
      context,
      listen: false,
    );

    bool? delete = await showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Delete Task"),
          content: const Text(
            "Are you sure you want to delete this task?",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text(
                "Delete",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (delete == true) {
      await taskProvider.deleteTask(index);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Task Deleted!"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void showAddTaskDialog() {
    final taskProvider =
    Provider.of<TaskProvider>(
      context,
      listen: false,
    );

    taskController.clear();

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(20),
          ),
          title: const Text(
            "Add New Task",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: TextField(
            controller: taskController,
            autofocus: true,
            textInputAction:
            TextInputAction.done,
            onSubmitted: (_) async {
              final title =
              taskController.text.trim();

              if (title.isEmpty) return;

              await taskProvider.addTask(title);

              taskController.clear();

              if (!mounted) return;

              Navigator.pop(context);
            },
            decoration:
            const InputDecoration(
              hintText: "Enter task name",
              prefixIcon:
              Icon(Icons.task),
              border:
              OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                taskController.clear();
                Navigator.pop(context);
              },
              child:
              const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () async {
                final title =
                taskController.text
                    .trim();

                if (title.isEmpty) return;

                await taskProvider
                    .addTask(title);

                taskController.clear();

                if (!mounted) return;

                Navigator.pop(context);

                ScaffoldMessenger.of(
                    context)
                    .showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Task Added Successfully",
                    ),
                    duration:
                    Duration(
                      seconds: 2,
                    ),
                  ),
                );
              },
              style: ElevatedButton
                  .styleFrom(
                backgroundColor:
                Colors.teal,
              ),
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final taskProvider =
    Provider.of<TaskProvider>(
      context,
    );

    return Scaffold(
        backgroundColor:
        Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor:
          Colors.teal.shade700,
          centerTitle: true,
          title: const Text(
            "Task Manager",
            style: TextStyle(
              color: Colors.white,
              fontWeight:
              FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed:
              showAddTaskDialog,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment
                  .start,
              children: [
            Row(
            children: [
            Icon(
            Icons
                .assignment_outlined,
              color: Colors
                  .teal.shade700,
              size: 30,
            ),
            const SizedBox(
                width: 8),
            Text(
              "My Tasks",
              style: TextStyle(
                fontSize: 26,
                fontWeight:
                FontWeight
                    .bold,
                color: Colors
                    .teal
                    .shade700,
              ),
            ),
            ],
          ),
          const SizedBox(
              height: 5),
          Text(
            "${taskProvider.tasks.length} Tasks",
            style:
            const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox( height: 20),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: taskProvider.tasks.isEmpty
                  ? Center(
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.assignment,
                      size: 100,
                      color: Colors.teal.shade300,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "No Tasks Yet!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Tap + to add your first task.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
                  : ListView.builder(
                physics:
                const AlwaysScrollableScrollPhysics(
                  parent:
                  BouncingScrollPhysics(),
                ),
                itemCount:
                taskProvider.tasks.length,
                itemBuilder:
                    (context, index) {
                  final Task task =
                  taskProvider.tasks[index];

                  return Card(
                    margin:
                    const EdgeInsets.only(
                        bottom: 12),
                    elevation: 3,
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                          15),
                    ),
                    child: ListTile(
                      contentPadding:
                      const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: IconButton(
                        onPressed: () {
                          taskProvider.toggleTask(
                              index);
                        },
                        icon: Icon(
                          task.isCompleted
                              ? Icons.check_box
                              : Icons
                              .check_box_outline_blank,
                          color: task.isCompleted
                              ? Colors.green
                              : Colors.teal,
                        ),
                      ),
                      title: Text(
                        task.title,
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w600,
                          decoration:
                          task.isCompleted
                              ? TextDecoration
                              .lineThrough
                              : TextDecoration
                              .none,
                        ),
                      ),
                      subtitle: Text(
                        task.isCompleted
                            ? "Completed"
                            : "Pending",
                        style: TextStyle(
                          color:
                          task.isCompleted
                              ? Colors.green
                              : Colors.orange,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () =>
                            deleteTask(index),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
              ],
            ),
          ),
        ),
    );
  }

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }
}