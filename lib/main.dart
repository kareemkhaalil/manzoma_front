import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Bazar',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const GroceryBazarHome(),
    );
  }
}
