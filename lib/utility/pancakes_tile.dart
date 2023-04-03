import 'package:flutter/material.dart';

class PancakesTile extends StatelessWidget {
  final String pancakesFlavour;
  final String pancakesPrice;
  final MaterialColor pancakesColor;
  final String imageName;

  final double borderRadius = 12.0;

  const PancakesTile({
    super.key,
    required this.pancakesFlavour,
    required this.pancakesPrice,
    required this.pancakesColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: pancakesColor[50],
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
                    color: pancakesColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    "£$pancakesPrice",
                    style: TextStyle(
                      color: pancakesColor[800], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            // pancakes picture
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0, 
                vertical: borderRadius,
              ),
              child: Image.asset(imageName),
            ),
            
            // pancakes flavor
            Text(
              pancakesFlavour, 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 4.0),

            Text(
              "Wetherspoons",
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