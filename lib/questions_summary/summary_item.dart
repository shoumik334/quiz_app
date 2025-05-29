import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Questions Style 

                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: 5),

                //User Answer Style

                Text(
                  itemData['user_answer'] as String,
                  style: TextStyle(color: const Color.fromARGB(255, 42, 42, 43)),
                ),

                //Correct Answer Style

                Text(
                  itemData['correct_answer'] as String,
                  style: TextStyle(color: const Color.fromARGB(213, 6, 63, 219)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
