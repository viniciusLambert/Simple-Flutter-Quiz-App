import 'package:fluter_complete_guide/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answer': ['Black', 'White', 'Red', 'Blue']
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answer': ['Bat', 'Rat', 'Snake', 'Whale']
    },
    {
      'questionText': 'What is your favorite Instructor?',
      'answer': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Second App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}
