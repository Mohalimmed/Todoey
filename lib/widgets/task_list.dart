
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksItems extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

