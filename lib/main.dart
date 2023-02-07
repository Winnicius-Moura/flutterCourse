import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

main() => runApp(const QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var questionSelected = 0;
  var totalPoints = 0;

  final questions = const [
    {
      'text': 'What do you favorite color?',
      'answer': [
        {'text': 'Black', 'points': 2},
        {'text': 'Red', 'points': 5},
        {'text': 'Blue', 'points': 8},
        {'text': 'Yellow', 'points': 9},
      ],
    },
    {
      'text': 'What do you favorite animal?',
      'answer': [
        {'text': 'Fish', 'points': 1},
        {'text': 'Rabit', 'points': 7},
        {'text': 'Bat', 'points': 3},
        {'text': 'Chicken', 'points': 4},
      ],
    },
    {
      'text': 'What do you favorite Film?',
      'answer': [
        {'text': 'Jaws', 'points': 10},
        {'text': 'Memento', 'points': 4},
        {'text': 'The Godfather', 'points': 2},
        {'text': 'Home Alone', 'points': 1},
      ],
    },
  ];

  void returnAnswer(int points) {
    if (haveQuestionSelected) {
      setState(() {
        questionSelected++;
        totalPoints += points;
      });
    }
  }

  bool get haveQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Questions')),
            ),
            body: haveQuestionSelected
                ? Quiz(
                    questions: questions,
                    questionSelected: questionSelected,
                    returnAnswer: returnAnswer)
                : const Result()));
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
