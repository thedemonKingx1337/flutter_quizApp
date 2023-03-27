import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'pottan aahno?',
      'answers': [
        {'text': 'athe', 'score': 10},
        {'text': 'manden aahn', 'score': 20},
        {'text': 'arekkore', 'score': 30},
        {'text': 'marappottan', 'score': 100},
      ],
    },
    {
      'questionText': 'Fav Instructor',
      'answers': [
        {'text': 'PB', 'score': 50},
        {'text': 'Prof.PB', 'score': 100},
        {'text': 'PB sir', 'score': 70},
        {'text': 'Dr.PB', 'score': 30},
      ],
    },
    {
      'questionText': 'Messi Or CR',
      'answers': [
        {'text': 'Messi 10', 'score': 100},
        {'text': 'Leo 10', 'score': 10},
        {'text': 'Leo Messi', 'score': 30},
        {'text': 'the Other One But Not \'Not CR\' ', 'score': 70},
      ],
    },
  ];
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We Have More Question!!!!!!!!');
    } else {
      print('No More Question!!!!!!!!');
    }
    //print("Answer is Selected!! is");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
