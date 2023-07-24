import 'package:flutter/material.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen(
    this.startQuiz, {
    super.key,
  });

  void buttonPress() {
    print("BUTTON PRESS");
  }

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(125, 255, 255, 255),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                color: Color.fromARGB(125, 255, 255, 255), fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}