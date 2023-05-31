import 'package:flutter/material.dart';
import 'package:fl_5414060/CH09/ch8_labs_5414060/basic_page.dart';

void main() => runApp(BasicApp());

class BasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BasicPage(),
    );
  }
}
