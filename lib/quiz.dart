import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/question_data.dart';
import 'package:flutter_quiz/front_screen.dart';
import 'package:flutter_quiz/question_screen.dart';
import 'package:flutter_quiz/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
      print(selectedAnswer);
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer.clear();
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer.clear();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = FrontScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        resultAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    // if (activeScreen == 'restart-screen') {
    //   screenWidget = FrontScreen(switchScreen);
    // }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 54, 2, 63),
              Color.fromARGB(255, 182, 76, 201)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
