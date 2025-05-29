import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummury extends StatelessWidget {
  const QuestionsSummury(this.summuryData, {super.key});
  final List<Map<String, Object>> summuryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child:SingleChildScrollView(
        child: Column(
          children:
              summuryData.map((data) {
                return SummaryItem(data);
                  
              }).toList(),
        ),
      ),
    );
  }
}
