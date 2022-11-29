import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _count = 1;
  int get count => _count;

  void increase(){
    _count = _count + 1;
    notifyListeners();
  }

  void decrease(){
    _count = _count - 1;
    notifyListeners();
  }
}