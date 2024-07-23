import "package:flutter/material.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor;
  final Color secondColor;
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    activeDiceImage = "assets/images/dice-4.png";
    print("Image Changing...");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [firstColor, secondColor],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
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
              child: const Text("DICE ROLL"),
            )
          ],
        ),
      ),
    );
  }
}
