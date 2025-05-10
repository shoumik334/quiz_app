import 'package:flutter/material.dart';

class startScreen extends StatelessWidget {
  const startScreen({super.key});

  @override
  Widget build(Context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250),
          SizedBox(height: 30),
          const Text(
            'Learn Flutter With Fun',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 30),
         OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(color: Colors.white),
            ),
            child:  const  Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
