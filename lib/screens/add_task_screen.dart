import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(String) addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(),
                textAlign: TextAlign.center,
                onChanged: (String value) {
                  newTaskTitle = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
