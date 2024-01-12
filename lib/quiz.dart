import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Method 1
  //Widgets are objects and objects are regular values in Dart (so we can use var instead of Widgets)
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = Home(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const Questions();
  //   });
  // }

  //Method 2
  var activeScreen = 'home-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == quiz.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'home-screen'
        ? Home(switchScreen)
        : (activeScreen == 'results-screen')
            ? Results(
                chosenAnswers: selectedAnswers,
              )
            : Questions(onSelectAnswer: chooseAnswer); //Method 3

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.orange,
                Colors.orangeAccent,
                Colors.orange,
              ],
            ),
          ),
          // child: activeScreen,   //Method 1
          // child: activeScreen == 'home-screen'
          //     ? Home(switchScreen)               //Method 2
          //     : const Questions(),
          child: screenWidget, //Method 3
        ),
      ),
    );
  }
}
