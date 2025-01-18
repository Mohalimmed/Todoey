import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task number 1 ',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: AddCheckBox(
        checkBoxToggle: (bool value) {
          setState(() {
            isChecked = value;
          });
        },
        checkedBox: isChecked,
      ),
    );
  }
}

class AddCheckBox extends StatelessWidget {
  const AddCheckBox({
    super.key,
    required this.checkedBox,
    required this.checkBoxToggle,
  });

  final bool checkedBox;
  final Function(bool) checkBoxToggle;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkedBox,
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {
        if (value != null) checkBoxToggle(value);
      },
    );
  }
}
