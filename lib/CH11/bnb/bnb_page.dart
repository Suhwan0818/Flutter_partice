import "package:fl_5414060/CH11/bnb/birthday_screen.dart";
import "package:fl_5414060/CH11/bnb/reminder_screen.dart";
import "package:fl_5414060/CH11/bnb/grateful_screen.dart";
import "package:flutter/material.dart";

class BNBHomeScreen extends StatefulWidget {
  const BNBHomeScreen({super.key});

  @override
  State<BNBHomeScreen> createState() => _BNBHomeScreenState();
}

class _BNBHomeScreenState extends State<BNBHomeScreen> {
  late Widget _currentScreen;
  int _currentIndex = 0;
  List<Widget> _listPages = [];

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentScreen = _listPages[selectedIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    _listPages.addAll([BirthdayScreen(), GratefulScreen(), ReminderScreen()]);
    _currentScreen = BirthdayScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BNB"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: _currentScreen,
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (selectedIndex) => _changePage(selectedIndex),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Birthdays',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Grateful',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Reminders',
          ),
        ],
      ),
    );
  }
}
