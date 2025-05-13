import 'package:app_meuble/models/chair.dart';
import 'package:flutter/material.dart';

class HelloProvider extends ChangeNotifier {
  final List<Chair> _chair = [];

  List<Chair> get chair => _chair;

  void addItem(Chair chaise) {
    final isExist = _chair.contains(chaise);
    if (isExist) {
      _chair.remove(chaise);
    } else {
      _chair.add(chaise);
    }
    notifyListeners();
  }

  /* void removeItem(Chair chaise) {
    _chair.remove(chaise);
    notifyListeners();
  } */
}
