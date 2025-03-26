import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  bool isChecked;
  final Function() toggleCallBack;
  final Function() deleteTasks;
  TaskTile({super.key, required this.name,required this.isChecked, required this.toggleCallBack, required this.deleteTasks});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      onLongPress: deleteTasks,
      trailing:Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value){
          toggleCallBack();
        }
      )
    );
  }
}
