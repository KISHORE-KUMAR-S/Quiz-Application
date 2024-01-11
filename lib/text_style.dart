import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  String text;

  StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic),
    );
  }
}
