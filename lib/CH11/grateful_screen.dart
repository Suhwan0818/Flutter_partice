import 'package:flutter/material.dart';

class GratefulScreen extends StatefulWidget {
  const GratefulScreen({super.key});

  @override
  State<GratefulScreen> createState() => _GratefulScreenState();
}

class _GratefulScreenState extends State<GratefulScreen> {
  void _radioOnChanged(int? index) {
    setState(() {
      _radioGrounpValue = index!;
      _selectedGrateful = _gratefulList[index];
      print('_selectedRadioValue $_selectedGrateful');
    });
  }

  @override
  void initState() {
    super.initState();
    _gratefulList
      ..add('Family')
      ..add('Friends')
      ..add('Coffee');
    _radioGrounpValue = 0;
  }

  int _radioGrounpValue = 1;
  List<String> _gratefulList = [];
  String _selectedGrateful = '...';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grateful'),
        actions: <Widget>[
          IconButton(
              onPressed: () => Navigator.pop(context, _selectedGrateful),
              icon: Icon(Icons.check))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            RadioMenuButton<int>(
                value: 0,
                groupValue: _radioGrounpValue,
                onChanged: _radioOnChanged,
                child: Text("Family")),
            RadioMenuButton<int>(
                value: 1,
                groupValue: _radioGrounpValue,
                onChanged: _radioOnChanged,
                child: Text("Friends")),
            RadioMenuButton<int>(
                value: 2,
                groupValue: _radioGrounpValue,
                onChanged: _radioOnChanged,
                child: Text("Coffee")),
          ],
        ),
      )),
    );
  }
}
