import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_summary/question_index.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSummary extends StatelessWidget {
  const ItemSummary(this.data, {super.key});
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final isCorrect = data['answer'] == data['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndex(
              isCorrect: isCorrect, index: data['question_index'] as int),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  data['correct_answer'] as String,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 236, 146, 252),
                      fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  data['answer'] as String,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 168, 67, 235),
                      fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
