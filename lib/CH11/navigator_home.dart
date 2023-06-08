import 'package:fl_5414060/CH11/grateful_screen.dart';
import 'package:flutter/material.dart';
import 'about_screen.dart';

class NavigatorHomeScreen extends StatefulWidget {
  const NavigatorHomeScreen({super.key});

  @override
  State<NavigatorHomeScreen> createState() => _NavigatorHomeScreenState();
}

class _NavigatorHomeScreenState extends State<NavigatorHomeScreen> {
  String _howAreYou = '...';
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
      {required BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratefulResponse = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => GratefulScreen()),
    );
    setState(() {
      _howAreYou = _gratefulResponse ?? '';
    });
  }

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
