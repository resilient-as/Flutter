import 'package:flutter/material.dart';
import 'package:hello_world/styled_text.dart';

const startAligntment = Alignment.topLeft;
const endAligntment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //own widget class
  const GradientContainer(
      {super.key}); //constructor, You can simply write super dot key here and this will accept a named argument called Key and automatically forward it to the superclass, so to StatelessWidget under that same name, so also under the name key.
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
          begin: startAligntment,
          end: endAligntment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
