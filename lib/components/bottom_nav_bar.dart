import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ), // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ), // Category
        ],
      ),
    );
  }
}
