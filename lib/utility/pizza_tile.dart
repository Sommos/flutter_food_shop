import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavour;
  final String pizzaPrice;
  final MaterialColor pizzaColor;
  final String imageName;

  final double borderRadius = 12.0;

  const PizzaTile({
    super.key,
    required this.pizzaFlavour,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
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
                    color: pizzaColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(borderRadius),
                  child: Text(
                    "£$pizzaPrice",
                    style: TextStyle(
                      color: pizzaColor[800], 
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                )
              ],
            ),
            // pizza picture
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0, 
                vertical: borderRadius,
              ),
              child: Image.asset(imageName),
            ),
            
            // pizza flavor
            Text(
              pizzaFlavour, 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 4.0),

            Text(
              "Dominoes",
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