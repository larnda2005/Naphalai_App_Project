import 'package:flutter/material.dart';
import 'package:naphalai_e/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Naphalai E',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Naphalai E'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Home(),
      ), // Scaffold
    ),
  );
}
