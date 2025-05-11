import 'package:app_meuble/models/chair.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Chair> item = [];
  int _count = 1;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  bool isExist(Chair chaise) {
    final isExist = item.contains(chaise);
    return isExist;
  }

  void addChair(Chair chaise) {
    item.add(chaise);
    notifyListeners();
  }
}
