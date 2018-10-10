import 'package:flutter/material.dart';

import './texts.dart';

class TextManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextManagerState();
  }
}

class _TextManagerState extends State<TextManager> {
  static int index = 0;

  String myText = myTexts[index];

  static var myTexts = [
    '',
    'Hello World  :)',
    'Goodbye cruel world!  :(',
    'What can\'t you just \nleave me alone!!  :\\'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            color: Color(0xFF8B1122),
            elevation: 20.0,
            splashColor: Colors.red,
          ),
          Texts(myText)
        ],
      ),
    );
  }
}
