import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key, required this.totalPoints, required this.restartQuiz});

  final int totalPoints;
  final void Function() restartQuiz;

  String get finalResult {
    if (totalPoints < 8) {
      return 'Congratulations!!!';
    } else if (totalPoints < 12) {
      return 'Insane!!';
    } else if (totalPoints < 16) {
      return 'Impressive!';
    } else {
      return 'Jedi level!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            finalResult,
            style: const TextStyle(fontSize: 32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: TextButton(
            onPressed: restartQuiz,
            child: const Text(
              'Restart?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
