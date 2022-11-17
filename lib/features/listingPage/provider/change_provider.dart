import 'package:flutter/material.dart';


class ChangeProvider extends ChangeNotifier{
  bool _value = true;
  bool get value => _value;

  void fluctuater(){
    _value = !_value;
    notifyListeners();
  }
}