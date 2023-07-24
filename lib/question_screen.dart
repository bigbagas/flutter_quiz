import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Question",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton("Anser"),
          AnswerButton("Anser"),
          AnswerButton("Anser"),
        ],
      ),
    );
  }
}
