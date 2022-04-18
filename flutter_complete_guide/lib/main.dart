import 'package:flutter/material.dart';

import './quizz.dart';
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
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = [
    {
      "question": "Quelle est ta couleur favorite ?",
      "answers": [
        {"text": "Bleu", "score": 1},
        {"text": "Rouge", "score": 2},
        {"text": "Vert", "score": 3},
        {"text": "Jaune", "score": 4}
      ],
    },
    {
      "question": "Quel est ton animal favoris ?",
      "answers": [
        {"text": "Rat", "score": 1},
        {"text": "Lapin", "score": 2},
        {"text": "Chat", "score": 3},
        {"text": "Cheval", "score": 4}
      ],
    },
    {
      "question": "Quel est ton plat favoris ?",
      "answers": [
        {"text": "Pizza", "score": 1},
        {"text": "Sushis", "score": 2},
        {"text": "Hamburger", "score": 3},
        {"text": "Poulet Roti", "score": 4}
      ],
    },
  ];

  void _resetQuizz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < questions.length
              ? Quizz(
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                  questions: questions)
              : Result(
                  resultScore: _totalScore,
                  resetQuizz: _resetQuizz,
                )),
    );
  }
}
