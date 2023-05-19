import 'package:flutter/material.dart';
import 'list_page.dart';

main() => runApp(ListViewApp());

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: ListViewPage());
  }
}
