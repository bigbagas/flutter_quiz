import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.textAnswer, {super.key});

  final String textAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: Text(textAnswer),
    );
  }
}
