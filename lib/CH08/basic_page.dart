import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        flexibleSpace: SafeArea(
            child: Icon(
          Icons.photo_camera,
          size: 75.0,
          color: Colors.white70,
        )),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: PopupMenuButtonWidget(),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ContainerWithBoxDecorationWidget(),
              ColumnWidget(),
              RowWidget(),
              ImagesAndIconWidget(),
            ],
          ),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightGreen.shade100,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});
}

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  List<TodoMenuItem> foodMenuList = [
    TodoMenuItem(title: "Fast Food", icon: Icon(Icons.fastfood)),
    TodoMenuItem(title: "Remind Me", icon: Icon(Icons.add_alarm)),
    TodoMenuItem(title: "Flight", icon: Icon(Icons.flight)),
    TodoMenuItem(title: "Music", icon: Icon(Icons.audiotrack)),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: null_check_always_fails
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
          child: PopupMenuButton<TodoMenuItem>(
        icon: Icon(Icons.view_list),
        onSelected: ((valueSelected) {
          print("valueSelected: ${valueSelected.title}");
        }),
        itemBuilder: (BuildContext context) {
          return foodMenuList.map((TodoMenuItem todoMenuItem) {
            return PopupMenuItem(
              value: todoMenuItem,
              child: Row(
                children: <Widget>[
                  Icon(todoMenuItem.icon.icon),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(todoMenuItem.title),
                ],
              ),
            );
          }).toList();
        },
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Row1"),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Text("Row2"),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Text("Row3"),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Column 1"),
        Divider(),
        Text("Column 2"),
        Divider(),
        Text("Column 3"),
        Divider(),
      ],
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.lightGreen.shade500,
                ])),
        child: RichText(
            text: TextSpan(
                text: "Sean World",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.deepPurpleAccent,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                ),
                children: <TextSpan>[
              TextSpan(
                text: ' for',
              ),
              TextSpan(
                text: " Mobile",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
      ),
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.cover,
        ),
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWG5CipvF5fWYENNbD5KivlBm8W9c4EO7RS-5vmLhWUQ&s"),
        Icon(
          Icons.brush,
          color: Colors.lightGreen,
          size: 75,
        )
      ],
    );
  }
}
