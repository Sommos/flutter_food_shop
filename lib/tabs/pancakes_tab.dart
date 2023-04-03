import 'package:flutter/material.dart';

import '../utility/pancakes_tile.dart';

class PancakesTab extends StatelessWidget {
  // list of pancakes
  final List pancakesOnSale = [
    // [pancakesFlavor, pancakesPrice, pancakesColor, imageName]
    ["Berries", "8", Colors.pink, "lib/images/pancakes/berries_pancakes.png"],
    ["Buttered", "3", Colors.yellow, "lib/images/pancakes/buttered_pancakes.png"],
    ["Cherry", "6", Colors.red, "lib/images/pancakes/cherry_pancakes.png"],
    ["Syrup", "4", Colors.orange, "lib/images/pancakes/syrup_pancakes.png"],
  ];

  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0/1.5,
      ),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakesFlavour: pancakesOnSale[index][0],
          pancakesPrice: pancakesOnSale[index][1],
          pancakesColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      }
    );
  }
}