import 'package:flutter/material.dart';

import '../utility/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  // list of donuts
  final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Bucharesti", "11", Colors.brown, "lib/images/pizzas/bucharesti_pizza.png"],
    ["Cheese", "13", Colors.yellow, "lib/images/pizzas/cheese_pizza.png"],
    ["Pepperoni", "16", Colors.red, "lib/images/pizzas/pepperoni_pizza.png"],
    ["Pineapple", "14", Colors.orange, "lib/images/pizzas/pineapple_pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0/1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavour: donutsOnSale[index][0],
          pizzaPrice: donutsOnSale[index][1],
          pizzaColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      }
    );
  }
}