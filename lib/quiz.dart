import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswer= [];
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

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);     
    if (selectedAnswer.length == questions.length){
      setState(() {
       
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz (){
    setState(() {
      selectedAnswer=[];
      activeScreen='questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        );
    }
    if (activeScreen== 'result-screen'){
      screenWidget = ResultScreen(chosenAnswer: selectedAnswer,onRestart: restartQuiz,);
    }



    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(244, 234, 147, 211),
                const Color.fromARGB(255, 197, 116, 162),
              ],
              begin: Alignment.topLeft,
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
