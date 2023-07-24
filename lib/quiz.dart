import 'package:flutter/material.dart';
import 'package:flutter_quiz/front_screen.dart';
import 'package:flutter_quiz/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = FrontScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
