import 'package:flutter/material.dart';

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sean Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CenterCardPadding(),
          ],
        ),
      ),
    );
  }
}

class CenterCardPadding extends StatelessWidget {
  const CenterCardPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Card(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(100.0),
          child: Text(
            'Sean World!',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class ExpandedFlexiblePositionedWidget extends StatelessWidget {
  const ExpandedFlexiblePositionedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[],
              )
            ],
          )
        ],
      ),
    );
  }
}
