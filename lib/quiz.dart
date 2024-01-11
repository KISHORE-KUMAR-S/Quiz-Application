import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widgets are objects and objects are regular values in Dart (so we can use var instead of Widgets)
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = Home(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}
