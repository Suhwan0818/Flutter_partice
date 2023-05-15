import 'package:flutter/material.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffA8CBFD),
          title: Text("Scaffold"),
        ),
        body: Container(
          color: Color(0XffF2A7B3),
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Body",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            AppBar(
              backgroundColor: Color(0xffFFC3A0),
              title: Text("Articles"),
            ),
            SideBarArticleWidget(countNumber: "first"),
            Divider(),
            SideBarArticleWidget(countNumber: "second"),
            Divider(),
            SideBarArticleWidget(countNumber: "third"),
            Divider(),
            SideBarArticleWidget(countNumber: "forth"),
            Divider(),
            SideBarArticleWidget(countNumber: "fifth"),
            Divider(),
            SideBarArticleWidget(countNumber: "sixth"),
            Divider(),
            SideBarArticleWidget(countNumber: "seventh"),
            Divider(),
          ],
        )),
        bottomSheet: Container(
          color: Color(0xffFBED96),
          padding: EdgeInsets.all(100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "BottomSheet",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          Container(
              color: Color(0xffABECD6),
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print("Pressed Add");
                },
                color: Colors.white,
              )),
          Container(
              color: Color(0xffF2A7B3),
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  print("Pressed Clear");
                },
                color: Colors.white,
              )),
          Container(
              color: Color(0xffA8CBFD),
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: IconButton(
                icon: Icon(Icons.east),
                onPressed: () {
                  print("Pressed Back");
                },
                color: Colors.white,
              )),
        ],
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffA8CBFD),
              radius: 60.0,
              child: Text(
                "Refresh",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.linked_camera), label: "Capture"),
          ],
          selectedItemColor: Color(0xffF2A7B3),
        ));
  }
}

class SideBarArticleWidget extends StatelessWidget {
  const SideBarArticleWidget({
    Key? key,
    required this.countNumber,
  }) : super(key: key);

  final String countNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(children: <Widget>[
        Text(
          "This is my $countNumber article",
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
