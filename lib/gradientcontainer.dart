import 'package:flutter/material.dart';
import 'package:example/dice.dart';
import 'package:example/styled_text.dart';
import 'package:flutter/src/material/text_button.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomLeft;

var activeDiceImage = 'images/dice-1.png';

class GradientColor extends StatelessWidget {
  const GradientColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(200, 25, 30, 80),
            Color.fromARGB(230, 100, 70, 90),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:
            DiceRoller(), /*Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/dice-1.png',
              width: 200,
            ),
            const SizedBox(height: 20),
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
        ),*/
      ),
    );
  }
}
