import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callbackCheckBox;
  final Function callbackDelete;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.callbackCheckBox,
      this.callbackDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: isChecked ? callbackDelete : null,
        child: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: callbackCheckBox,
      ),
    );
  }
}
