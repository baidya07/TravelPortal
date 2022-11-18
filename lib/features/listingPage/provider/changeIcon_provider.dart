import 'package:flutter/material.dart';


class ChangeIconProvider extends ChangeNotifier{
  List<bool> _value = [];
  List<bool> get value => _value;


  void changeIcon(bool value){
    final isChanged = _value.contains(value);
    if(isChanged){
      _value.remove(value);
    }else {
      _value.add(value);
    }
    notifyListeners();
  }

  bool isChanged(bool value){
    final isChanged = _value.contains(value);
    return isChanged;
  }
}