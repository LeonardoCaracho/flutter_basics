import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function deleteCallback;

  TaskTile(
      {@required this.isChecked,
      @required this.taskTitle,
      @required this.checkBoxCallback,
      @required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: deleteCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkBoxCallback));
  }
}
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckBoxState;

//   TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: checkBoxState,
//         onChanged: toggleCheckBoxState);
//   }
// }
