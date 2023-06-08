import 'package:flutter/material.dart';
import 'bnb_page.dart';

void main() => runApp(BnbApp());

class BnbApp extends StatelessWidget {
  const BnbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BNBHomeScreen(),
    );
  }
}
