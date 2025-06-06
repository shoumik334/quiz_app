import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';

import 'package:quiz_app/questions_summary/questions_summury.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });
  final List<String> chosenAnswer;
  final Function() onRestart;

  List<Map<String, Object>> getSummuryData() {
    final List<Map<String, Object>> summury = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summury.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }

    return summury;
  }

  @override
  Widget build(BuildContext context) {
    final summuryData = getSummuryData();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summuryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Text(
              'You Answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummury(summuryData),
            TextButton.icon(
              onPressed: onRestart,
              
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 245, 245, 245),elevation: 2,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            
            ),
          ],
        ),
      ),
    );
  }
}
