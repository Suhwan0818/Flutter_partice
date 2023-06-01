import 'package:flutter/material.dart';
import 'navigator_home.dart';

void main() => runApp(NavigatorApp());

class NavigatorApp extends StatelessWidget {
  const NavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: NavigatorHomeScreen(),
    );
  }
}
