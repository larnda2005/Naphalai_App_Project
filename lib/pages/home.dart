
import 'package:flutter/material.dart';
import 'package:naphalai_e/pages/cart.dart';
import 'package:naphalai_e/pages/category.dart';
import 'package:naphalai_e/pages/message.dart';
import 'package:naphalai_e/pages/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    CartPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello world")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"), //
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
        ],
      ),
    );
  }
}
