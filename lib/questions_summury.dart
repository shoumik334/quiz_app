import 'package:flutter/material.dart';

class QuestionsSummury extends StatelessWidget {
  const QuestionsSummury(this.summuryData, {super.key});
  final List<Map<String, Object>> summuryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child:SingleChildScrollView(
        child: Column(
          children:
              summuryData.map((data) {
                return Row(
                  children: [
                    Text(((data['question_index'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'] as String),
                          const SizedBox(height: 5),
                          Text(data['user_answer'] as String),
                          Text(data['correct_answer'] as String),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
