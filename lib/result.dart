import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int finalScore;
  final Function resetHandler;

  Result({this.finalScore, this.resetHandler});

  String get resultPhrase {
    var resultText = "Really good!";

    if (finalScore > 0 && finalScore <= 5) {
      resultText = "Not good!";
    } else if (finalScore > 5 && finalScore <= 10) {
      resultText = "Moderate!";
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
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          FlatButton(
            child: Text("Restart Quiz!"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
