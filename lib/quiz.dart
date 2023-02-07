import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.questions,
      required this.questionSelected,
      required this.returnAnswer});
  final List<Map<String, Object>> questions;
  final int questionSelected;
  final void Function(int) returnAnswer;

  bool get haveQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = haveQuestionSelected
        ? questions[questionSelected].cast()['answer']
        : [];

    return Column(
      children: <Widget>[
        Question(text: questions[questionSelected]['text'].toString()),
        ...answers.map((resp) {
          return Answer(
              text: resp.cast()['text'].toString(),
              onPressed: () => returnAnswer(int.parse(resp['points'].toString())));
        }).toList(),
      ],
    );
  }
}
