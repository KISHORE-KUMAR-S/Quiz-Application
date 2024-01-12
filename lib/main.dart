import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarColor: Colors.orange,
        systemNavigationBarDividerColor: Colors.orange),
  );

  runApp(const Quiz());
}
