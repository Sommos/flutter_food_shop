import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavour;
  final String burgerPrice;
  final MaterialColor burgerColor;
  final String imageName;

  final double borderRadius = 12.0;

  const BurgerTile({
    super.key,
    required this.burgerFlavour,
    required this.burgerPrice,
    required this.burgerColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
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
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    "£$burgerPrice",
                    style: TextStyle(
                      color: burgerColor[800], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            // burger picture
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0, 
                vertical: borderRadius,
              ),
              child: Image.asset(imageName),
            ),
            
            // burger flavor
            Text(
              burgerFlavour, 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 4.0),

            Text(
              "McDonalds",
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