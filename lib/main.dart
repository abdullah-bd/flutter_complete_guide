import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      "questionText": "What is your favourite Color?",
      "answers": ["black", "red", "green", "white"]
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": ["cat", "dog", "lion", "rabbit"]
    },
    {
      "questionText": "Who is your favourite instructor?",
      "answers": ["a", "b", "c", "d"]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions,_questionIndex,_answerQuestion)
            : Result(),
      ),
    );
  }
}
