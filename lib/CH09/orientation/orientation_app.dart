import 'package:flutter/material.dart';
import 'orientation_page.dart';

void main() => runApp(OrientationApp());

class OrientationApp extends StatelessWidget {
  const OrientationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: OrientationPage());
  }
}
