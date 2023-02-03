import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(const QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var questionSelected = 0;

  void returnAnswer() {
    setState(() {
      questionSelected++;
    });
    // ignore: avoid_print
    print('question answered!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'What do you favorite color?',
      'What do you favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Questions')),
      ),
      body: Column(
        children: <Widget>[
          Question(text: questions[questionSelected]),
          ElevatedButton(
            onPressed: returnAnswer,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () => print(''),
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: returnAnswer,
            child: const Text('Answer 3'),
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
