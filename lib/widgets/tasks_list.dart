import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        taskTitle: widget.tasks[index].taskTitle,
        isDone: widget.tasks[index].isDone,
        toggleTaskState: (_) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      ),
      itemCount: widget.tasks.length,
    );
  }
}
