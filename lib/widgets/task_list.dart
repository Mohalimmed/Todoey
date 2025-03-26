import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task-data.dart';
import 'package:todoey/models/task-models.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksItems extends StatelessWidget {
  const TasksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            name: value.tasks[index].name ?? '',
            isChecked: value.tasks[index].isChecked,
            toggleCallBack: () {
              value.toggleCheckBox(value.tasks[index]);
            },
            deleteTasks: (){
              value.deleteTasks(value.tasks[index]);
            },
          ),
          itemCount: value.taskCount,
        );
      },
    );
  }
}
