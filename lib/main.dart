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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget & Basics'),
        ),
        body: Column(
          children: [
            Container(
              child: RaisedButton(
                onPressed: () {
                  print("[MyAppState] onPressed");
                },
                child: Text('Press Me!'),
              )
            )
          ]
        )
      )
    );
  }
}