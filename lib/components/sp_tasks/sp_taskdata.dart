import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:hack20flutter/components/task.dart';

class SpTaskData extends ChangeNotifier{
  List<Task> _sTasks = [];

  UnmodifiableListView<Task> get sTasks {
    return UnmodifiableListView(_sTasks);
  }

  int get sTaskCount{
    return _sTasks.length;
  }

  void addTask(String sNewTitle) {
    final task = Task(name: sNewTitle);
    _sTasks.add(task);
    notifyListeners();
  }

  void updateTask(Task sTask) {
    sTask.toggleDone();
    notifyListeners();
  }

  void delete(Task sTask) {
    _sTasks.remove(sTask);
    notifyListeners();
  }
}