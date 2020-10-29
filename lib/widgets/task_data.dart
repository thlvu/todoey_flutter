import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String taskTitle) {
    tasks.add(Task(taskTitle: taskTitle));
    notifyListeners();
  }

  int get tasksCount => tasks.length;
}
