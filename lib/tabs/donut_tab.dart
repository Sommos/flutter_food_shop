import 'package:flutter/material.dart';

import '../utility/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Chocolate", "7", Colors.brown, "lib/images/donuts/chocolate_donut.png"],
    ["Grape", "4", Colors.purple, "lib/images/donuts/grape_donut.png"],
    ["Ice Cream", "12", Colors.blue, "lib/images/donuts/icecream_donut.png"],
    ["Strawberry", "9", Colors.red, "lib/images/donuts/strawberry_donut.png"],
  ];

  DonutTab({super.key});

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
        return DonutTile(
          donutFlavour: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      }
    );
  }
}