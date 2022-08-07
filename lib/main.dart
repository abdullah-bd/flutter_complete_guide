import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {"questionText":"What is your favourite Color?",
      "answers":["black","red","green","white"]
      },
      {"questionText":"What is your favourite animal?",
      "answers":["cat","dog","lion","rabbit"]
      },
      {"questionText":"Who is your favourite instructor?",
      "answers":["a","b","c","d"]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"]),
            ...(questions[_questionIndex]["answers"] as List<String>).map((answer){
              return Answer(_answerQuestion,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
