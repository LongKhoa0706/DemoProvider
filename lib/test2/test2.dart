import 'package:flutter/material.dart';
import 'package:flutter_app/test2/taskprodiver.dart';
import 'package:flutter_app/test3/test3.dart';
import 'package:provider/provider.dart';

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      child: Consumer<TaskProvider>(
        builder: (BuildContext context, task, Widget child) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        controller: task.textController,
                      ),
                    ),
                    RaisedButton(
                      child: Text("Submit"),
                      onPressed: () {
                        task.addList();
                      },
                    ),
                    RaisedButton(
                      child: Text("Test3"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Test3()));
                      },
                    )
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: task.arrTask.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(task.arrTask[index].title);
                  },
                )
              ],
            ),
          );
        },
      ),
      create: (_) => TaskProvider(),
    );
  }
}
