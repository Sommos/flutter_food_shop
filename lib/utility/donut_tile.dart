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
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    "£$donutPrice",
                    style: TextStyle(
                      color: donutColor[800], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            // donut picture
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0, 
                vertical: borderRadius,
              ),
              child: Image.asset(imageName),
            ),
            
            // donut flavor
            Text(
              donutFlavour, 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 4,),

            Text(
              "Krispy Kreme",
              style: TextStyle(color: Colors.grey[700]),
            ),

            // love icon & add to cart button
            Padding(
              padding: EdgeInsets.all(borderRadius),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // love icon
                  Icon(
                    Icons.favorite, 
                    color: Colors.pink[400],
                  ),
            
                  // plus button
                  Icon(
                    Icons.add, 
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}