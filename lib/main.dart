import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  } 

}

class MyAppState extends State<MyApp> {
  var currentQuestion = 0;

  void changeQuestion() {
    setState(() {
     currentQuestion = currentQuestion + 1; 
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
        body: Center(
          child: Column(
            children: <Widget>[
              Text(questions[currentQuestion]),
              RaisedButton(
                child: Text("Asistio"),
                onPressed: () {
                  changeQuestion();
                  print("Asistio!");
                },
              ),
              RaisedButton(
                child: Text("Llego tarde"),
                onPressed: () {
                  changeQuestion();
                  print("Llego tarde!");
                },
              ),
              RaisedButton(
                child: Text("No llego"),
                onPressed: () {
                  changeQuestion();
                  print("No llego!");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
