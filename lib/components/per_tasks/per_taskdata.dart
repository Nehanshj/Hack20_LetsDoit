import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hack20flutter/components/task.dart';

class PerTaskData extends ChangeNotifier{
  List<Task> _pTasks = [
    Task(name: 'Read a Book'),
    Task(name: 'Pending errors'),
    Task(name: 'Flutter App Project'),
    Task(name: 'Research'),
    Task(name: 'Complete Assignment'),
  ];

  UnmodifiableListView<Task> get pTasks {
    return UnmodifiableListView(_pTasks);
  }

  int get pTaskCount{
    return _pTasks.length;
  }

  void addTask(String pNewTitle) {
    final task = Task(name: pNewTitle);
    _pTasks.add(task);
    notifyListeners();
  }

  void updateTask(Task pTask) {
    pTask.toggleDone();
    notifyListeners();
  }

  void delete(Task pTask) {
    _pTasks.remove(pTask);
    notifyListeners();
  }
}