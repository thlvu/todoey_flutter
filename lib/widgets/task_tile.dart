import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('test.'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
