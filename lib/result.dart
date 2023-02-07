import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.totalPoints});

  final int totalPoints;

  String get finalResult {
    if (totalPoints < 8){
      return 'Congratulations!!!';
    } else if (totalPoints < 12) {
      return 'You''re insane!!';
    } else if (totalPoints < 16) {
      return 'Impressive!';
    } else {
      return 'Jedi level!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finalResult,
        style: const TextStyle(
          fontSize: 32
        ),
      ),
    );
  }
}