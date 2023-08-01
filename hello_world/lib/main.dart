import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {//own widget class
const GradientContainer({super.key});//constructor, You can simply write super dot key here and this will accept a named argument called Key and automatically forward it to the superclass, so to StatelessWidget under that same name, so also under the name key.
  @override
  Widget build(context) {
    //function
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color(0xd82d0762),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
      ),
    );
  }
}