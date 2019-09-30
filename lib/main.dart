import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _currentQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _currentQuestion = _currentQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Control App"),
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(color: Colors.red),
              ),
              ListTile(
                title: Text("Asistencia"),
                onTap: null,
              ),
              ListTile(
                title: Text("Recursos Humanos"),
                onTap: null,
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_currentQuestion]["questionText"],
            ),
            ...(questions[_currentQuestion]["answers"] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
