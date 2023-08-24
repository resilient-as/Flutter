import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});//constructor, with positional argument text and named argument key
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.blue, fontSize: 28));
  }
}
