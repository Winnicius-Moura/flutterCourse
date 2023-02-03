import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}