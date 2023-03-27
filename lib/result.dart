import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 90) {
      resultText = "You Are Awesome!!!!!!!!";
    } else if (resultScore <= 150) {
      resultText = "You Are Pritty Good!!!!";
    } else if (resultScore <= 210) {
      resultText = "You Evil!!!!";
    } else {
      resultText = "You So Bad Nigger!!!!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
