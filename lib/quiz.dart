import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final _questions;
  final _questionIndex;
  final Function _answerQuestion;

  Quiz(this._questions, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]["questionText"]),
        ...(_questions[_questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>_answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
