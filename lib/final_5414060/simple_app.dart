import 'package:flutter/material.dart';

void main() => runApp(SimpleStateLessApp());

class SimpleStateLessApp extends StatelessWidget {
  const SimpleStateLessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material();
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
    return Scaffold();
  }
}
