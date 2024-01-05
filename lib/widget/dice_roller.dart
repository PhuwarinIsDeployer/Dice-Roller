import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/style_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dicePoint = 0;
  var activeDiceImage = 'assets/images/dice-placeholder.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      dicePoint = diceRoll;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyleText(
            dicePoint == 0 ? 'Roll the Dice' : 'Your point is $dicePoint'),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black38,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
