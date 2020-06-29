import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hack20flutter/components/task.dart';

class EnvTaskData extends ChangeNotifier{
  List<Task> _eTasks = [
    Task(name: 'Water Plants'),
  ];

  UnmodifiableListView<Task> get eTasks {
    return UnmodifiableListView(_eTasks);
  }

  int get eTaskCount{
    return _eTasks.length;
  }

  void addTask(String eNewTitle) {
    final task = Task(name: eNewTitle);
    _eTasks.add(task);
    notifyListeners();
  }

  void updateTask(Task eTask) {
    eTask.toggleDone();
    notifyListeners();
  }

  void delete(Task eTask) {
    _eTasks.remove(eTask);
    notifyListeners();
  }
}