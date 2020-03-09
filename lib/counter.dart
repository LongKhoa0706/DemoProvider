

import 'package:flutter/material.dart';
import 'package:flutter_app/test2/test2.dart';

class Counter with ChangeNotifier{

  int _counter;

  Counter(this._counter);

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void nextPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>Test2()));
  }

  void increment(){
    _counter++;
    notifyListeners();
  }

  void decrement(){
    _counter--;
    notifyListeners();
  }

}