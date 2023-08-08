import 'package:flutter/material.dart';
import 'package:hello_world/styled_text.dart';

const startAligntment = Alignment.topLeft;
const endAligntment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //own widget class
  const GradientContainer(
      {super.key, required this.colors}); //constructor, with named argument key
  //required means that the argument must be provided because it is not optional, in dart named arguments are optional by default
  final List<Color> colors; //list of colors
  @override
  Widget build(context) {
    //function
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligntment,
          end: endAligntment,
        ),
      ),
      child: const Center(
        child: StyledText('INDIA!'),
      ),
    );
  }
}
