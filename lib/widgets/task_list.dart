import 'package:flutter/material.dart';
import 'package:todoey/models/task-models.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksItems extends StatefulWidget {
  @override
  State<TasksItems> createState() => _TasksItemsState();

  final List<TaskModels> tasks;

  const TasksItems({super.key, required this.tasks});
}

class _TasksItemsState extends State<TasksItems> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
          name: widget.tasks[index].name ?? '',
          isChecked: widget.tasks[index].isChecked,
          toggleCallBack: () {
            setState(
              () {
                widget.tasks[index].toggleFunction();
              },
            );
          }),
      itemCount: widget.tasks.length,
    );
  }
}
