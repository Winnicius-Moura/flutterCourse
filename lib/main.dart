import 'package:flutter/material.dart';
import 'package:project_questions/answer.dart';
import './question.dart';

main() => runApp(const QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var questionSelected = 0;

  void returnAnswer() {
    setState(() {
      questionSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Questions')),
      ),
      body: Column(
        children: <Widget>[
          Question(text: questions[questionSelected]['text'].toString()),
          Answer(
            onPressed: returnAnswer,
            text: ('Answer 1'),
          ),
         Answer(
          onPressed: returnAnswer,
          text: ('Answer 2'),
         ),
          Answer(
            onPressed: returnAnswer,
            text: ('Answer 3'),
          ),
        ],
      ),
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
