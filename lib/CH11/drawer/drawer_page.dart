import 'package:flutter/material.dart';

class DrawerHomeScreen extends StatelessWidget {
  const DrawerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sean Drawer Page')),
      drawer: LeftDrawerWiget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
