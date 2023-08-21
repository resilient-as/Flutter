import 'package:flutter/material.dart';
class DiceRoller extends StatefulWidget {//we will not add build because its a stateful widget
  const DiceRoller({Key? key}) : super(key: key);
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }  
}
class _DiceRollerState extends State<DiceRoller> {
    var activeDiceImage = 'assets/images/dice-2.png';
    void rollDice() {
    //function
    activeDiceImage = 'assets/images/dice-1.png';
    
  }

  @override
  Widget build(context){
    return Column(
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
                    foregroundColor: const Color.fromARGB(255, 223, 16, 16),
                    textStyle: const TextStyle(fontSize: 30)),
                child: const Text('Roll Dice'))
          ],
        );
  }
}