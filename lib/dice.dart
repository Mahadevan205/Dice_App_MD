import 'package:flutter/material.dart';
import 'dart:math';
// this is updated sample
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceRoller = 3;

  void rollDice() {
    setState(() {
      activeDiceRoller = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceRoller.png',
          width: 200,
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
