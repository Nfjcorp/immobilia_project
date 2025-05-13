import 'package:app_meuble/models/chair.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  //List<Chair> item = [];
  int _count = 1;

  int get count => _count;
  List<Map<String, dynamic>> get chair =>
      _chair
          .map(
            (chaise) => {
              'imageUrl': chaise.imageUrl,
              'tag': chaise.tag,
              'name': chaise.name,
              'description': chaise.description,
              'Price': chaise.price,
            },
          )
          .toList();

  final List<Map<String, dynamic>> _chair = [];

  // increment and decrement methods
  // to increase and decrease the number of items in the cart
  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  /* bool isExist(Chair chair) {
    final isExist = chair.contains(chair);
    return isExist;
  } */

  void addChair(Chair chaise) {
    _chair.add({
      'imageUrl': chaise.imageUrl,
      'tag': chaise.tag,
      'name': chaise.name,
      'description': chaise.description,
      'Price': chaise.price,
    });
    notifyListeners();
  }
}

extension on Map<String, dynamic> {
  get name => '';
  get imageUrl => '';
  get tag => '';
  get description => '';
  get price => '';
}
