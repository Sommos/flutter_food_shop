import 'package:flutter/material.dart';

import '../utility/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  // list of burgers
  final List burgersOnSale = [
    // [burgerFlavor, burgerPrice, burgerColor, imageName]
    ["Meal", "10", Colors.cyan, "lib/images/burgers/burger_meal.png"],
    ["Cheese", "4", Colors.yellow, "lib/images/burgers/cheese_burger.png"],
    ["Seeded", "5", Colors.brown, "lib/images/burgers/seeded_cheeseburger.png"],
    ["Spam", "7", Colors.red, "lib/image/burgers/spam_burger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0/1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavour: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      }
    );
  }
}