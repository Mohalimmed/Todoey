import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task-models.dart';

class TaskData extends ChangeNotifier{

  final List<TaskModels> _tasks = [];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }

  void addingTasks(String addNewTask){
    _tasks.add(TaskModels(name: addNewTask));
    notifyListeners();
  }

  void toggleCheckBox(TaskModels task){
    task.toggleFunction();
    notifyListeners();
  }

  void deleteTasks(TaskModels task){
    _tasks.remove(task);
    notifyListeners();
  }
}