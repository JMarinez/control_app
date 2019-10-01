import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = [
    {
      "questionText": "How's the weather?",
      "answers": ["Sunny", "Rainy", "Cloudy"]
    },
    {
      "questionText": "How you doin?",
      "answers": ["Good", "OK", "Sad", "Depressed"]
    },
    {
      "questionText": "Is Flutter amazing?",
      "answers": ["Totally", "It's alright", "Horrible"]
    }
  ];

  var _currentQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _currentQuestion = _currentQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Control App"),
          backgroundColor: Colors.red,
        ),
        body: _currentQuestion < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                currentQuestion: _currentQuestion,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
