import "package:flutter/material.dart";
import "package:dice_roll_app/styled_text.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 26, 2, 80),
          ],
        ),
      ),
      child: const Center(
        child: StyledText("Hello Manash!"),
      ),
    );
  }
}
