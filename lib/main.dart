import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;
  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "I am question no. 1",
      "I am question no. 2",
      "I am question no. 3"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: (){
                print("Answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
