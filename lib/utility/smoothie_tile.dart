import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavour;
  final String smoothiePrice;
  final MaterialColor smoothieColor;
  final String imageName;

  final double borderRadius = 12.0;

  const SmoothieTile({
    super.key,
    required this.smoothieFlavour,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                    color: smoothieColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    "£$smoothiePrice",
                    style: TextStyle(
                      color: smoothieColor[800], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            // smoothie picture
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0, 
                vertical: borderRadius,
              ),
              child: Image.asset(imageName),
            ),
            
            // smoothie flavor
            Text(
              smoothieFlavour, 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 4.0),

            Text(
              "T4",
              style: TextStyle(color: Colors.grey[700]),
            ),

            const SizedBox(height: 8.0),
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