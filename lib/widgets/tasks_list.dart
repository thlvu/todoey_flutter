import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/widgets/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) =>
      ListView.builder(
        itemBuilder: (context, index) => TaskTile(
          taskTitle: taskData.tasks[index].taskTitle,
          isDone: taskData.tasks[index].isDone,
        ),
        itemCount: taskData.tasksCount,
      ),
    );
  }
}
