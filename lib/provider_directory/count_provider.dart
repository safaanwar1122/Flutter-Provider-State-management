import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

//ChangeNotifier works as set state, it has global context
// build this class at top of material app
// else error hit

class CountProvider with ChangeNotifier{
int _count=50;
int get count=>_count;
void setCount(){
  _count++;
  notifyListeners();
}

}

