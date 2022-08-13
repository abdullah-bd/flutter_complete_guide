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
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What is your favourite Color?",
      "answers": [
        {"text": "black", "score": 10},
        {"text": "red", "score": 5},
        {"text": "green", "score": 3},
        {"text": "white", "score": 1}
      ]
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": [
        {"text": "cat", "score": 10},
        {"text": "dog", "score": 5},
        {"text": "lion", "score": 3},
        {"text": "rabbit", "score": 1}
      ]
    },
    {
      "questionText": "Who is your favourite instructor?",
      "answers": [
        {"text": "a", "score": 10},
        {"text": "b", "score": 5},
        {"text": "c", "score": 3},
        {"text": "d", "score": 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
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
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
