import 'package:flutter/material.dart';

main() => runApp(const QuestionsApp());

class QuestionsApp extends StatelessWidget {
  const QuestionsApp({super.key});

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
            children: [
              Text(questions.elementAt(0)),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Answer 3'),
              ),
            ],
          ),
        )
      );
  }
}
