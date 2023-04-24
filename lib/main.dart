import 'package:flutter/material.dart';

import './question.dart';

// iporting class func from diff files that are not present in main.dart
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // build is func inside material.dart we neeed to imply it in order to create statelesswidget
    // it needs to return widget to build app
    var question = [
      'what\'s your fav animal',
      'what\'s your fav sport',
    ];
    return MaterialApp(
      home: Scaffold(
        //speacial type of widget we need to return provided by material.dart
        //it do a combination of widgets to turn on my app
        appBar: AppBar(
          title: Text('my fisrt app'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex],
            ),
            ElevatedButton(
              child: Text('answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer 2'),
              onPressed: () => print('answer 2 is chosen'),
            ),
            ElevatedButton(
              child: Text('answer 3'),
              onPressed: () {
                // your long func body
                print('answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
