import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => SummaryItem(
                  data: data,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
