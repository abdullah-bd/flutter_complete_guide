import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "I am question no. 1",
      "I am question no. 2",
      "I am question no. 3"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("The question!"),
            RaisedButton(
              child: Text("Answer 1"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
