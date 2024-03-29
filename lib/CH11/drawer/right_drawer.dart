import 'package:fl_5414060/CH11/drawer/menu_list.dart';
import 'package:flutter/material.dart';

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: Icon(
            Icons.face,
            size: 128.0,
            color: Colors.white54,
          ),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        const MenuListTitleWidget()
      ],
    ));
  }
}
