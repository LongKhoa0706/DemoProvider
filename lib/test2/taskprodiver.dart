import 'package:flutter/material.dart';
import 'package:flutter_app/test2/task.dart';

class TaskProvider extends ChangeNotifier{
  TaskProvider();
  final textController = TextEditingController();
  List<Task> arrTask = List<Task>();

  void addList(){
    Task task = Task(title: textController.text);
    arrTask.add(task);
    notifyListeners();
  }
}