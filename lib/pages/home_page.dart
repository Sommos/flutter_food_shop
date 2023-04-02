import 'package:flutter/material.dart';

import '../utility/tab.dart';
import '../tabs/burger_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';
import '../tabs/pancakes_tab.dart';
import '../tabs/donut_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of tabs
  List<Widget> tabsList = const [
    // burger tab
    AppTab(
      iconPath: 'lib/icons/burger.png',
    ),
    // pizza tab
    AppTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    // smoothie tab
    AppTab(
        iconPath: 'lib/icons/smoothie.png',
      ),
    // pancake tab
    AppTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    // donut tab
    AppTab(
      iconPath: 'lib/icons/donut.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: tabsList.length,
        child: Scaffold(
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
            children: [
              // text
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36.0,
                  vertical: 18.0,
                ),
                child: Row(
                  children: const [
                    Text(
                      "I want to ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "EAT",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
    
              const SizedBox(height: 10.0),

              // tab bar
              TabBar(tabs: tabsList),
              // tab bar view
              Expanded(
                child: TabBarView(
                  children: [
                    // burger page
                    BurgerTab(),
                    // pizza page
                    PizzaTab(),
                    // smoothie page
                    SmoothieTab(),
                    // pancake page
                    PancakesTab(),
                    // donut page
                    DonutTab(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}