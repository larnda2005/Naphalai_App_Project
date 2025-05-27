import 'package:flutter/material.dart';
import 'package:naphalai_e/screens/home/home.dart';
import 'package:naphalai_e/widgets/bottom_navbar.dart';
// import 'package:naphalai_e/screens/onboarding/onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get selectedIndex => 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationMenu(selectedIndex: selectedIndex),
    );
  }
}
