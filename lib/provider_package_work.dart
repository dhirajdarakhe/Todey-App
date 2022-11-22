import 'package:flutter/material.dart';
import 'model/task.dart';
import 'package:provider/provider.dart';
import 'dart:collection';
class Taskss extends ChangeNotifier{

  List<Task> _task = [];
    void addTask(newValueTask){
      final tsakadd1 = Task(name: newValueTask);
      print(newValueTask);
      _task.add(tsakadd1);
      notifyListeners();
    }
    UnmodifiableListView<Task> get task{
      return UnmodifiableListView(_task);
    }
    void updateBox(Task task){
      task.toggeleDone();
      notifyListeners();
    }
    void delletedMethod(Task task1){
      _task.remove(task1);
      notifyListeners();
    }

}
