import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

class circBot extends StatefulWidget{
  @override
  State<circBot> createState() => _circBotState();
}

class _circBotState extends State<circBot> {
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.blue, labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange, labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, "Reports", Colors.red, circleStrokeColor: Colors.black),
    TabItem(Icons.notifications, "Notifications", Colors.cyan),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
    );
  }
}