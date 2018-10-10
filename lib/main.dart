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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('How am I feeling? \n\n' + myText,
              style: TextStyle(fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Color(0xFF8B1122)
              ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (index <= 3) {
                      index = index + 1;
                    } else {
                      index = 0;
                    }
                    myText = myTexts[index];
                  });
                },
                child: Text('Press Here!'),
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Color(0xFF8B1122),
                elevation: 20.0,
                splashColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int index = 0;

String myText = myTexts[index];

var myTexts = ['', 'Hello World  :)', 'Goodbye cruel world!  :(', 'What can\'t you just \nleave me alone!!  :\\'];


