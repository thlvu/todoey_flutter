import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_data.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final void Function(bool) toggleTaskState;

  TaskTile({this.task, this.toggleTaskState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        child: Text(
          task.taskTitle,
          style: TextStyle(
              decoration: task.isDone ? TextDecoration.lineThrough : null),
        ),
        onLongPress: () =>
            Provider.of<TaskData>(context, listen: false).deleteTask(task),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleTaskState,
      ),
    );
  }
}
