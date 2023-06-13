import 'package:fl_5414060/CH11/drawer/left_drawer.dart';
import 'package:fl_5414060/CH11/drawer/right_drawer.dart';
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
