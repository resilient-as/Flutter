import 'package:flutter/material.dart';
//import 'package:hello_world/styled_text.dart';

const startAligntment = Alignment.topLeft;
const endAligntment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //own widget class
  GradientContainer(
      {super.key, required this.colors}); //constructor, with named argument key
  //required means that the argument must be provided because it is not optional, in dart named arguments are optional by default
  //super.key means that the key argument is passed to the super class constructor
  //final means that the value of the variable cannot be changed after it is initialized
  //const means that the value of the variable is known at compile time
  //const is a compile time constant, final is a runtime constant
  //const is implicitly final
  //const is used for values that are known at compile time, final is used for values that are known at runtime
  final List<Color> colors; //list of colors

  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    //function
    activeDiceImage = 'assets/images/dice-1.png';
    print('Dice Rolled...');
  }

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
        child: Column(
          mainAxisSize: MainAxisSize
              .min, //Column is the parent widget, mainAxisSize is the property of the Column widget
          //mainAxisSize.min means that the Column widget will take up the minimum amount of space in the main axis
          children: [
            Image.asset(activeDiceImage, width: 200, height: 200), //Image Asset
            const SizedBox(height: 20), //SizedBox, alternative of padding
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(
                    //   top: 20,),// we can use all also instead of only, all is used to set the same value for all the sides
                    foregroundColor: Color.fromARGB(255, 223, 16, 16),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text('Roll Dice'))
          ],
        ),
        //child: StyledText('Hello World!'),
      ),
    );
  }
}
