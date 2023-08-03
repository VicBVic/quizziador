import 'package:flutter/material.dart';
import 'package:quizziador/finish_screen.dart';
import 'package:quizziador/logo_screen.dart';
import 'package:quizziador/quiz_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(
      //    scaffoldBackgroundColor: Color.fromARGB(255, 228, 251, 255)),
      routes: {
        '/': (context) => LogoScreen(),
        '/quiz': (context) => QuizScreen(),
        '/finish': (context) => FinishScreen(),
      },
    );
  }
}
