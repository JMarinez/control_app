import 'package:flutter/material.dart';

import './question.dart';

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

  void _changeQuestion() {
    setState(() {
      _currentQuestion = _currentQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["How's the weather?", "How you doin?"];
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
              questions[_currentQuestion],
            ),
            RaisedButton(
              child: Text("Asistio"),
              onPressed: () {
                _changeQuestion();
                print("Asistio!");
              },
            ),
            RaisedButton(
              child: Text("Llego tarde"),
              onPressed: () {
                _changeQuestion();
                print("Llego tarde!");
              },
            ),
            RaisedButton(
              child: Text("No llego"),
              onPressed: () {
                _changeQuestion();
                print("No llego!");
              },
            )
          ],
        ),
      ),
    );
  }
}
