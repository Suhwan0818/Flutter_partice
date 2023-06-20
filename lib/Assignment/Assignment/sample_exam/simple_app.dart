import 'package:flutter/material.dart';
import 'complex_app.dart';

void main() => runApp(SimpleStateLessWidget());

class SimpleStateLessWidget extends StatelessWidget {
  const SimpleStateLessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sean Drawer Page"),
        ),
        drawer: RightDrawerWidget(),
      ),
    );
  }
}

class SimpleStateFulWidget extends StatefulWidget {
  const SimpleStateFulWidget({super.key});

  @override
  State<SimpleStateFulWidget> createState() => _SimpleStateFulWidgetState();
}

class _SimpleStateFulWidgetState extends State<SimpleStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
