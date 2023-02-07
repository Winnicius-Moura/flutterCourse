import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

main() => runApp(const QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var questionSelected = 0;

  final questions = const [
    {
      'text': 'What do you favorite color?',
      'answer': ['Black', 'Red', 'Blue', 'Yellow'],
    },
    {
      'text': 'What do you favorite animal?',
      'answer': ['Fish', 'Rabit', 'Bat', 'Chicken'],
    },
    {
      'text': 'What do you favorite Film?',
      'answer': ['Jaws', 'Memento', 'The Godfather', 'Home Alone'],
    },
  ];

  void returnAnswer() {
    if (haveQuestionSelected) {
      setState(() {
        questionSelected++;
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
