import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App Practice",
      theme: ThemeData(primaryColor: Colors.green),
      home: Center(
        child: Text("Hello dart world"),
      ),
    );
  }
}
