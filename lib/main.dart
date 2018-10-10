import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
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
        body: Center(
          child: Column(
            children: [
              Text('test text'),
              RaisedButton(
                onPressed: () {},
                child: Text('Press Here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
