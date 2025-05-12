import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen ({super.key,required this.chosenAnswer});
  final List<String> chosenAnswer;

  List<Map<String,Object>> getSummuryData(){
    final List<Map<String,Object>> summury=[];

    for (var i; i<chosenAnswer.length;i++){
      summury.add(
      {
      'question-index':i,
      'question': questions[i].text,
      'answer': questions[i].answers[0],
      'user_answer':chosenAnswer[i],
      },
      );

    }

    return summury;

  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('5 out of 10 qs'),
            const SizedBox(height: 30),
            const Text('List of ans and qs'),
            TextButton(onPressed: () {}, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
