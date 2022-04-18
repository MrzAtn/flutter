import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizz;

  Result({this.resultScore, this.resetQuizz});

  // getter
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awasome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "You are so bad!";
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
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuizz,
            child: Text("Restart Quizz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
