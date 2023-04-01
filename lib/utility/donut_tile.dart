import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  final MaterialColor donutColor;
  final String imageName;

  final double borderRadius = 12.0;

  const DonutTile({
    super.key,
    required this.donutFlavour,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    donutPrice,
                  ),
                )
              ],
            ),
            // donut picture

            // donut flavor

            // love icon & add to cart button
          ],
        ),
      ),
    );
  }
}