import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isDone;
  final void Function(bool) toggleTaskState;

  TaskTile({this.taskTitle, this.isDone, this.toggleTaskState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleTaskState,
      ),
    );
  }
}
