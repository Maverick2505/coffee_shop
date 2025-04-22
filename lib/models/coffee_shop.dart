import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{

  //coffee for sale list
  final List<Coffee> _shop =[
    //black coffee
    Coffee(
      name: "Cafe Negro", 
      price: "45 pesos", 
      imagePath: "lib/image/black.png"
      ),

    //latte
    Coffee(
      name: "Latte", 
      price: "50 pesos", 
      imagePath: "lib/image/latte.png"
      ),

    //espresso
    Coffee(
      name: "Espresso", 
      price: "55 pesos", 
      imagePath: "lib/image/expresso.png"
      ),

    //iced coffee
    Coffee(
      name: "Cafesito Frio", 
      price: "70 pesos", 
      imagePath: "lib/image/ice.png"
      ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }


}