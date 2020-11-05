import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final void Function(bool) toggleTaskState;
  final void Function() longPressCallback;

  TaskTile({this.task, this.toggleTaskState, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        task.taskTitle,
        style: TextStyle(
            decoration: task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleTaskState,
      ),
    );
  }
}
