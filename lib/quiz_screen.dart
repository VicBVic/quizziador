import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizziador/question_data.dart';
import 'package:quizziador/question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final quiz_questions_data = [
    QuestionData(
      options: ["1", "3", "2", "4"],
      correctOption: 2,
      text: "Care este intrebarea numarul 2?",
    ),
    QuestionData(
      options: ["Ce?", "Raspuns", "Da", "Next"],
      correctOption: 3,
      text: "Intrebare?",
    ),
    QuestionData(
      options: ["50%", "25%", "100%", "0%"],
      correctOption: 2,
      text:
          "Ai o sansa de 50 la suta sa raspunzi corect la această intrebare. Care sunt șansele să răspunzi corect?",
    ),
    QuestionData(
      options: ["da", "nu", "Capu Slay"],
      correctOption: 2,
      text: "esti slei??",
    ),
  ];

  int current_question = 0;
  int correct_answers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Question $current_question",
        ),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Correct Answers: $correct_answers",
            ),
          ))
        ],
      ),
      body: QuestionWidget(
        data: quiz_questions_data[current_question],
        callback: (is_correct) {
          setState(() {
            correct_answers += is_correct ? 1 : 0;
            current_question++;
            if (current_question == quiz_questions_data.length) {
              current_question = 0;
              Navigator.pushNamed(context, "/finish",
                  arguments: correct_answers);
              correct_answers = 0;
            }
          });
        },
      ),
    );
  }
}
