import 'package:flutter/material.dart';
import 'grid_page.dart';

main() => runApp(GridApp());

class GridApp extends StatelessWidget {
  const GridApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: GridHomePage());
  }
}
