import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(135, 132, 4, 4), const Color.fromARGB(255, 168, 212, 248)],
              begin:Alignment.centerLeft,
              end:Alignment.bottomLeft,
            ),
          ),
          child: startScreen(),
        ),
      ),
    ),
  );
}
