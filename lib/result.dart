import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    if (resultScore <= 8) {
      return "You are awesome and innocent";
    } else if (resultScore <= 12) {
      return "Pretty likeable";
    } else if (resultScore <= 16) {
      return "You are strange";
    } else {
      return "You are so bad";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
