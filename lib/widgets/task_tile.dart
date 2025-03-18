import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  bool isChecked;
  final Function() toggleCallBack;
  TaskTile({super.key, required this.name,required this.isChecked, required this.toggleCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
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
