import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = data['answer'] == data['chosen_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(((data['question_index'] as int) + 1).toString()),
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: data['question_index'] as int,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.craftyGirls(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data['chosen_answer'] as String,
                    style: GoogleFonts.craftyGirls(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    data['answer'] as String,
                    style: GoogleFonts.craftyGirls(
                        color: Colors.amberAccent, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
