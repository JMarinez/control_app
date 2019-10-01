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
      "answers": [
        {
          "choice": "Sunny",
          "score": 10,
        },
        {
          "choice": "Rainy",
          "score": 1,
        },
        {
          "choice": "Cloudy",
          "score": 5,
        }
      ]
    },
    {
      "questionText": "How you doin?",
      "answers": [
        {
          "choice": "Good",
          "score": 10,
        },
        {
          "choice": "OK",
          "score": 7,
        },
        {
          "choice": "Sad",
          "score": 5,
        },
        {
          "choice": "Depressed",
          "score": 1,
        },
      ]
    },
    {
      "questionText": "Is Flutter amazing?",
      "answers": [
        {
          "choice": "Totally",
          "score": 10,
        },
        {
          "choice": "It's alright",
          "score": 5,
        },
        {
          "choice": "Horrible",
          "score": 0,
        },
      ]
    }
  ];

  var _currentQuestion = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
     _currentQuestion = 0;
     _totalScore = 0; 
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

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
            : Result(finalScore: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
