import 'package:flutter/material.dart';

class LeftDrawerWiget extends StatelessWidget {
  const LeftDrawerWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const MenuListTitleWidget(),
        ],
      ),
    );
  }
}

class MenuListTitleWidget extends StatelessWidget {
  const MenuListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('About'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutScreen()));
        },
      ),
      Divider(
        color: Colors.grey,
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Setting"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ]);
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.cake,
        size: 120.0,
        color: Colors.orange,
      )),
    );
  }
}
