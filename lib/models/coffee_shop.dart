import 'package:coffeetute/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    Coffee(name: 'Long Black', price: "4.10", imagePath: "images/black.png"),
    Coffee(name: 'Late', price: "4.20", imagePath: "images/latte.png"),
    Coffee(name: 'Espresso', price: "3.50", imagePath: "images/espresso.png"),
    Coffee(
        name: 'Iced Coffee', price: "4.40", imagePath: "images/iced_coffee.png")
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get usercart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
