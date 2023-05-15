import 'package:flutter/material.dart';
import 'scaffold_page.dart';

void main() => runApp(ScaffoldApp());

class ScaffoldApp extends StatelessWidget {
  const ScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Scaffold",
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: ScaffoldPage());
  }
}
