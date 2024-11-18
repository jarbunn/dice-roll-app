import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;
  //var activeDiceImage = 'assets/dice-images/dice-2.png';

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/dice-images/dice-$diceRoll.png';
      print('changing image...');
    });
  }


  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 200,),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(fontSize: 28)
            ),
          child: const Text('Roll Dice')
          )
      ],
    );
  }
}