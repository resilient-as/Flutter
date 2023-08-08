import 'package:flutter/material.dart';
import 'package:hello_world/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.orange,Colors.white, Colors.green]),
      ),
    ),
  );
}

