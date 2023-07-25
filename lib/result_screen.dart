import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/question_data.dart';
import 'package:flutter_quiz/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.resultAnswer});

  final List<String> resultAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < resultAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'answer': resultAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData
        .where(
          (element) => element['correct_answer'] == element['answer'],
        )
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectQuestion out of $numTotalQuestion queastiona correctly!',
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
