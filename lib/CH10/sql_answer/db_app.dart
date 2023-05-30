import 'package:flutter/material.dart';
import 'db_home.dart';
import 'dart:io' as IO;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future main() async {
  if (IO.Platform.isWindows || IO.Platform.isLinux) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Sean App', home: StudentPage());
  }
}
