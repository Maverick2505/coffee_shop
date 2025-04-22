import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child)=> SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //heading
            Text(
            "Your Cart",
            style: TextStyle(fontSize: 20),
            ),

            //List of cart items
            Expanded(child: ListView.builder(itemBuilder: (context, index){
              //get individual cart items
              Coffee eachCoffee= value.userCart[index]; //min 16:24
            },))
          ],
        ),
      ),
    ));
  }
}