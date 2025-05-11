import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(Context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(130, 255, 255, 255),
          ),

          //  Opacity(
          //   opacity: 0.5,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          SizedBox(height: 30),
          Text(
            'Learn Flutter With Fun',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(color: Colors.white),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
