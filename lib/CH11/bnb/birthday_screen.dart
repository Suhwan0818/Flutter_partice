import 'package:flutter/material.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.cake,
        size: 120.0,
        color: Colors.orange,
      )),
    );
  }
}
