import 'package:flutter/material.dart';
import 'package:flutter_app/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<Counter>(
        child: MyHomePage(),
        create: (_) => Counter(0),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Provider"),
      ),
      body: Consumer<Counter>(
        // or can use method selecttor
        builder: (_, counter, Widget child) {
          return Center(
            child: Column(
              children: <Widget>[
                Text("Number"),
                SizedBox(
                  height: 20,
                ),
                Text('${counter.getCounter()}'),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () => counter.increment(),
                      child: Text("Increment"),
                    ),
                    RaisedButton(
                      onPressed: () => counter.decrement(),
                      child: Text("Decrement"),
                    ),
                    RaisedButton(
                      onPressed: () => counter.nextPage(context),
                      child: Text("Test2"),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
