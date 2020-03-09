import 'package:flutter/material.dart';
import 'package:flutter_app/test2/task.dart';

class TaskProvider extends ChangeNotifier{
  TaskProvider();
  List<Task> arrTask = List<Task>();

  void addList(){
    Task task = Task(title: arrTask.length.toString(), detail: arrTask.length.toString());
    arrTask.add(task);
    notifyListeners();
  }
}