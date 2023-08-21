import 'package:flutter/material.dart';
//import 'package:hello_world/styled_text.dart';
import 'package:hello_world/dice_roller.dart';

const startAligntment = Alignment.topLeft;
const endAligntment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //own widget class
  const GradientContainer(
      {super.key, required this.colors}); //constructor, with named argument key
  //required means that the argument must be provided because it is not optional, in dart named arguments are optional by default
  //super.key means that the key argument is passed to the super class constructor
  //final means that the value of the variable cannot be changed after it is initialized
  //const means that the value of the variable is known at compile time
  //const is a compile time constant, final is a runtime constant
  //const is implicitly final
  //const is used for values that are known at compile time, final is used for values that are known at runtime
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
      child: Center(
        //dyanamic widget so it is not 'const'
        child: DiceRoller(), 
        //child: StyledText('Hello World!'),
      ),
    );
  }
}
