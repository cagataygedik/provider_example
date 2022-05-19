// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class Fruit {
  final String fName;
  final String fDesc;
  bool addToCart;
  Fruit(this.fName, this.fDesc, {this.addToCart = false});
}

class FruitProvider extends ChangeNotifier {
  List<Fruit> fruits = [
    Fruit('Apple', 'Apple a day keeps doctor away'),
    Fruit('Mango', 'King of fruits'),
    Fruit('Banana', 'Powerbank of nutrition'),
    Fruit('Strawberry', 'Yummy for milk shake'),
    Fruit('Grapes', 'Good for wine'),
    Fruit('Kiwi', 'Healthy healthy'),
  ];

  void cartOperation(Fruit f) {
    fruits.forEach((element) {
      if (element.fName == f.fName) {
        element.addToCart = !element.addToCart;
        notifyListeners();
      }
    });
  }
}
