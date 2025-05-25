import 'package:flutter/material.dart';
import 'package:naphalai_e/widgets/main_navigator.dart';

void main() => runApp(const HomePage());

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
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
