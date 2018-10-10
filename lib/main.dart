import 'package:flutter/material.dart';

import './text_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Title',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Widget & Basics'),
            leading: Icon(Icons.hot_tub),
            backgroundColor: Color(0xFF8B1122),
          ),
          body: TextManager()),
    );
  }
}
