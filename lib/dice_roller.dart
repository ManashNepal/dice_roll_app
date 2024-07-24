import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentValue = 2;

  void rollDice() {
    setState(() {
      currentValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentValue.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 28),
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          child: const Text("ROLL DICE"),
        )
      ],
    );
  }
}
