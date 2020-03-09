import 'package:flutter/material.dart';
import 'package:flutter_app/test2/taskprodiver.dart';
import 'package:provider/provider.dart';

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (_)=>TaskProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test2"),
        ),
        body:Consumer<TaskProvider>(
          builder: (_, task, Widget child) {
            return ListView.builder(
              itemCount: task.arrTask.length,
              itemBuilder: (_, int index) {
                return ListTile(
                  title: Text(task.arrTask[index].title),
                  subtitle: Text(task.arrTask[index].detail),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<TaskProvider>(context,listen: false).addList();
          },
        ),
      ),
    );
  }
}
