import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          backgroundColor: Colors.yellow,
          fixedSize: const Size(double.infinity, 60),
        ),
        child: Text(
          answer,
          textAlign: TextAlign.center,
          style: GoogleFonts.craftyGirls(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 12.0),
        ),
      ),
    );
  }
}
