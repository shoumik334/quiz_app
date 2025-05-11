import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answerText,required this.onTap,});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build( context) {
    return ElevatedButton(onPressed: onTap,
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

      ) , 
    child: Text(answerText,textAlign: TextAlign.center,));
  }
}