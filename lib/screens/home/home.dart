import 'package:flutter/material.dart';
import 'package:naphalai_e/widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naphalai E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[100],
      ),
      home: const BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
