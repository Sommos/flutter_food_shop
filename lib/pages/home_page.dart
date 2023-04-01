import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {
              // open drawer
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open profile
              }
            ),
          ),
        ]
      ),
      body: Column(
        children: const [
          // text
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "I want to eat",
              style: TextStyle(fontSize: 24),
            ),

          // tab bar

          // tab bar view
          
          ),
        ],
      ),
    );
  }
}