import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('task number 1 ',),
      trailing: Checkbox(value: false, onChanged: (val){}),
    );
  }
}