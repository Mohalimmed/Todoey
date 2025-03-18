import 'package:flutter/material.dart';
import 'package:todoey/models/task-models.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksItems extends StatefulWidget {
  @override
  State<TasksItems> createState() => _TasksItemsState();
}

class _TasksItemsState extends State<TasksItems> {
  List<TaskModels> tasks = [
    TaskModels(name: 'Buying Eggs'),
    TaskModels(name: 'go to mall'),
    TaskModels(name: 'none of your business'),
    TaskModels(name: 'none of your business'),
    TaskModels(name: 'none of your business'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
          name: tasks[index].name ?? '',
          isChecked: tasks[index].isChecked,
          toggleCallBack: () {
            setState(
              () {
                tasks[index].toggleFunction();
              },
            );
          }),
      itemCount: tasks.length,
    );
  }
}
