import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/quiz.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = quiz[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.craftyGirls(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ...currentQuestion.getShuffledChoices().map(
                  (answer) => AnswerButton(
                      answer: answer, onTap: () => answerQuestion(answer)),
                ),

            // ...currentQuestion.answers.map((item) {
            //   return AnswerButton(answer: item, onTap: () {});
            // }), //For ordered choices
            // AnswerButton(answer: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(answer: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(answer: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(answer: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
