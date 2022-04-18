import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
