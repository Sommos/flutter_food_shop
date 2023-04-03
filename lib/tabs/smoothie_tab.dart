import 'package:flutter/material.dart';

import '../utility/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  // list of smoothies
  final List smoothiesOnSale = [
    // [smoothiesFlavor, smoothiesPrice, smoothiesColor, imageName]
    ["Berries", "3", Colors.pink, "lib/images/smoothies/blueberry_smoothie.png"],
    ["Guava", "3", Colors.green, "lib/images/smoothies/guava_smoothie.png"],
    ["Milkshake", "4", Colors.lightBlue, "lib/images/smoothies/strawberry_milkshake.png"],
    ["Strawberry", "3", Colors.red, "lib/images/smoothies/strawberry_smoothie.png"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0/1.5,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavour: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      }
    );
  }
}