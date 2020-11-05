import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/widgets/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            task: task,
            toggleTaskState: (bool _) => taskData.updateTask(task),
            longPressCallback: () => taskData.deleteTask(task),
          );
        },
        itemCount: taskData.tasksCount,
      ),
    );
  }
}
