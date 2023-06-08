import 'package:fl_5414060/CH11/drawer/menu_list.dart';
import 'package:flutter/material.dart';

class LeftDrawerWiget extends StatelessWidget {
  const LeftDrawerWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(),
          const MenuListTitleWidget(),
        ],
      ),
    );
  }
}
