import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int finalScore;

  Result(this.finalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: finalScore > 0 && finalScore <= 5 ? Text(
        "Not good!",
        style: TextStyle(
          fontSize: 28,
        ),
      ) : finalScore > 5 && finalScore <= 10 ? Text(
        "Moderate!",
        style: TextStyle(
          fontSize: 28,
        ),
      ) : Text(
        "Really good!",
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
