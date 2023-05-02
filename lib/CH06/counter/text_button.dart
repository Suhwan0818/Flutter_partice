import 'package:flutter/material.dart';

class TextButtonKMU extends StatelessWidget {
  final GestureTapCallback onPressed;
  String buttonText = "Button";
  TextButtonKMU({required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.lightBlueAccent,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: this.onPressed,
      shape: StadiumBorder(),
    );
  }
}
