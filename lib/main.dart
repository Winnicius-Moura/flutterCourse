import 'package:flutter/material.dart';
import 'package:project_questions/answer.dart';
import './question.dart';

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
    setState(() {
      questionSelected++;
    });
  }
  
  bool get haveQuestionSelected {
    return questionSelected < questions.length;
  }


  @override
  Widget build(BuildContext context) {
    // List<Widget> answers = [];

    // for (String textAnswer in questions[questionSelected].cast()['answer']) {
    //   answers.add(Answer(text: textAnswer, onPressed: returnAnswer));
    // }

    List<String> answers = haveQuestionSelected ? questions[questionSelected].cast()['answer'] : [];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Questions')),
      ),
      body: haveQuestionSelected ? Column(
        children: <Widget>[
          Question(text: questions[questionSelected]['text'].toString()),
          ...answers.map((e) => Answer(text: e, onPressed: returnAnswer)),
        ],
      ) : null,
    ));
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
