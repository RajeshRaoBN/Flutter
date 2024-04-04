import 'package:flutter/material.dart';

class Year with ChangeNotifier {
  int _year = 2023;

  int get year => _year;

  void increment() {
    _year++;
    notifyListeners();
  }

  void decrement() {
    _year--;
    notifyListeners();
  }

}