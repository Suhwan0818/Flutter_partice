import 'package:fl_5414060/CH11/bnb/birthday_screen.dart';
import 'package:fl_5414060/CH11/bnb/reminder_screen.dart';
import 'package:fl_5414060/CH11/grateful_screen.dart';
import 'package:flutter/material.dart';

class MenuListTitleWidget extends StatelessWidget {
  const MenuListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        leading: Icon(Icons.cake),
        title: Text('Birthdays'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BirthdayScreen()));
        },
      ),
      ListTile(
        leading: Icon(Icons.sentiment_satisfied),
        title: Text('Grateful'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GratefulScreen()));
        },
      ),
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text('Reminder'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ReminderScreen()));
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
