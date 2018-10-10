import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String myText;

  Texts(this.myText);

  @override
  Widget build(BuildContext context) {
    return Text(
      'How am I feeling? \n\n' + myText,
      style: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          color: Color(0xFF8B1122)),
    );
  }
}
