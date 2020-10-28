import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskTitle: 'first Task'),
    Task(taskTitle: '2nd Task'),
    Task(taskTitle: '3rd task'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        taskTitle: tasks[index].taskTitle,
        isDone: tasks[index].isDone,
        toggleTaskState: (_) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      ),
      itemCount: tasks.length,
    );
  }
}
