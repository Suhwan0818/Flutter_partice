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
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text('Sean Kim'),
            accountEmail: Text('Suhwan.Sean@gmail.com'),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home_top_moutain.jpg'),
                    fit: BoxFit.cover)),
          ),
          const MenuListTitleWidget(),
        ],
      ),
    );
  }
}
