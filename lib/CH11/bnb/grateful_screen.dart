import 'package:flutter/material.dart';

class GratefulScreen extends StatelessWidget {
  const GratefulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.sentiment_satisfied,
        size: 120.0,
        color: Colors.lightGreen,
      )),
    );
  }
}
