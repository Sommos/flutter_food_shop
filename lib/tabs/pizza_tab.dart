import 'package:flutter/material.dart';

import '../utility/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  // list of pizzas
  final List pizzasOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Bucharesti", "11.99", Colors.brown, "lib/images/pizzas/bucharesti_pizza.png"],
    ["Cheese", "13.99", Colors.yellow, "lib/images/pizzas/cheese_pizza.png"],
    ["Pepperoni", "16.99", Colors.red, "lib/images/pizzas/pepperoni_pizza.png"],
    ["Pineapple", "14.99", Colors.orange, "lib/images/pizzas/pineapple_pizza.png"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0/1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavour: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      }
    );
  }
}