import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/text_style.dart';

class Home extends StatelessWidget {
  const Home(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          StyledText('Learn Flutter the fun way!'),
          const SizedBox(
            height: 30.0,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white54,
              ),
            ),
            onPressed: () {
              startQuiz(); //Or onPressed: startQuiz,
            },
            label: Text(
              'Start Quiz',
              style: GoogleFonts.craftyGirls(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
