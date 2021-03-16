import 'package:flutter/material.dart';
import 'package:hti_pro/home.dart';

import 'bottomNavBar/account.dart';
import 'bottomNavBar/basket.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List screens = [
    Home(),Basket(),Account()
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Basket'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],

        selectedLabelStyle: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey[700], fontSize: 15, fontWeight: FontWeight.normal),
        selectedIconTheme: IconThemeData(color: Colors.black54, size: 20.0),
        unselectedIconTheme: IconThemeData(color: Colors.blueGrey[700], size: 20.0),
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.blueGrey[700],
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: screens[current],
    );
  }
}
