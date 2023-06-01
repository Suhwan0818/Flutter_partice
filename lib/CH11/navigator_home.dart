import 'package:flutter/material.dart';
import 'about_screen.dart';

class NavigatorHomeScreen extends StatefulWidget {
  const NavigatorHomeScreen({super.key});

  @override
  State<NavigatorHomeScreen> createState() => _NavigatorHomeScreenState();
}

class _NavigatorHomeScreenState extends State<NavigatorHomeScreen> {
  void _openAboutScreen(
      {required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => AboutScreen(),
      ),
    );
  }

  void _openGratefulScreen(
      {required BuildContext context, bool fullscreenDialog = false}) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () => _openAboutScreen(
              context: context,
              fullscreenDialog: true,
            ),
          )
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openGratefulScreen(context: context),
        tooltip: 'Gratitude',
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}
