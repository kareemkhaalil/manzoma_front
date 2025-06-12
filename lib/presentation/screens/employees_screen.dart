import 'package:flutter/material.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Text(
          'Employees Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
