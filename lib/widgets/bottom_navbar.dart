import 'package:flutter/material.dart';
import 'package:naphalai_e/screens/home/cart.dart';
import 'package:naphalai_e/screens/home/category.dart';
import 'package:naphalai_e/screens/home/home.dart';
import 'package:naphalai_e/screens/home/message.dart';
import 'package:naphalai_e/screens/home/user.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key, required int selectedIndex});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> pages = const <Widget>[
    HomePage(),
    CategoryPage(),
    MessagePage(),
    CartPage(),
    UserPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon:
                  _selectedIndex == 0
                      ? Icon(Icons.home)
                      : Icon(Icons.home_outlined),
              label: 'Home',
            ), // BottomnavigationBarItem
            BottomNavigationBarItem(
              icon:
                  _selectedIndex == 1
                      ? Icon(Icons.category)
                      : Icon(Icons.category_outlined),
              label: 'Category',
            ), // BottomnavigationBarItem
            BottomNavigationBarItem(
              icon:
                  _selectedIndex == 2
                      ? Icon(Icons.message)
                      : Icon(Icons.message_outlined),
              label: 'Message',
            ), // BottomnavigationBarItem
            BottomNavigationBarItem(
              icon:
                  _selectedIndex == 3
                      ? Icon(Icons.shopping_cart)
                      : Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ), // BottomnavigationBarItem
            BottomNavigationBarItem(
              icon:
                  _selectedIndex == 4
                      ? Icon(Icons.person)
                      : Icon(Icons.person_outline),
              label: 'User',
            ), // BottomnavigationBarItem
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color.fromARGB(255, 243, 33, 156),
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
