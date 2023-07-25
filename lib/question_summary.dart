import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData
          .map(
            (e) => Row(
              children: [
                Text(
                  ((e['question_index'] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(e['question'] as String),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(e['correct_answer'] as String),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(e['answer'] as String),
                    ],
                  ),
                )
              ],
            ),
          )
          .toList(),
    );
  }
}
