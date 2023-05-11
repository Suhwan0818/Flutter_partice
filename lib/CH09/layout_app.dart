import 'package:flutter/material.dart';
import 'layout_home.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  const LayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: LayoutHomePage());
  }
}
