import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.orange, Colors.white, Colors.green]),
      ),
    ),
  );
}

