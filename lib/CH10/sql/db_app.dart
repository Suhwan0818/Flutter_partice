import "package:flutter/material.dart";
import './db_page.dart';

void main() => runApp(DBApp());

class DBApp extends StatelessWidget {
  const DBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue), home: StudentPage());
  }
}
