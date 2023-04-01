import 'package:flutter/material.dart';

import '../utility/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Chocolate", "7", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Grape", "4", Colors.purple, "lib/images/grape_donut.png"],
    ["Ice Cream", "12", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "9", Colors.red, "lib/images/strawberry_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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