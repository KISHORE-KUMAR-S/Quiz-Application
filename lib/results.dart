import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/quiz.dart';
import 'package:quiz_app/questions_summary.dart';

class Results extends StatelessWidget {
  const Results(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final Function() restartQuiz;

  List<Map<String, Object>> get summaryData {
    //get keyword - getter method
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': quiz[i].text,
        'answer': quiz[i].answers[0],
        'chosen_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = quiz.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['answer'] == data['chosen_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.craftyGirls(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: restartQuiz,
            icon: const Icon(
              Icons.rotate_left,
              color: Colors.white,
            ),
            label: Text(
              'Restart Quiz',
              style: GoogleFonts.craftyGirls(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
