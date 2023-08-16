import 'package:flutter/material.dart';
import 'package:hello_world/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: const [Colors.orange, Colors.white, Colors.green]),
      ),
    ),
  );
}

