import 'package:flutter/material.dart';

class WidgetTreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tree',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    _buildContainer(40.0, 40.0, Colors.yellow),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    Expanded(
                      child: _buildContainer(40.0, 40.0, Colors.amber),
                    ),
                    Padding(padding: EdgeInsets.all(16.0)),
                    _buildContainer(40.0, 40.0, Colors.brown)
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        _buildContainer(60.0, 60.0, Colors.yellow),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        _buildContainer(40.0, 40.0, Colors.amber),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                        ),
                        _buildContainer(20.0, 20.0, Colors.brown),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                      radius: 100.0,
                      child: Stack(
                        children: <Widget>[
                          _buildContainer(100, 100, Colors.yellow),
                          _buildContainer(60, 60, Colors.amber),
                          _buildContainer(40, 40, Colors.brown),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }

  Container _buildContainer(double h, double w, Color color) {
    return Container(
      color: color,
      height: h,
      width: w,
    );
  }
}
