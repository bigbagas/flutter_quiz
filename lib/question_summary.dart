import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_summary/item_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (e) => ItemSummary(e),
              )
              .toList(),
        ),
      ),
    );
  }
}
