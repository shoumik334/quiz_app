import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // Widget? activeScreen ;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(135, 132, 4, 4),
                const Color.fromARGB(255, 168, 212, 248),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: screenWidget,
          //Ternary expression
          // activeScreen == 'start-screen'     //Condition
          //     ? StartScreen(switchScreen)    //expression if true
          //     : const QuestionsScreen(),     //Expressio if false
        ),
      ),
    );
  }
}
