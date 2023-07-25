import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/question_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.resultAnswer});

  final List<String> resultAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < resultAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i],
          'correct_answer': questions[i].answers[0],
          'answer': resultAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Bagas"),
            const SizedBox(
              height: 20,
            ),
            const Text("Bagas"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("BAGAS"),
            ),
          ],
        ),
      ),
    );
  }
}
