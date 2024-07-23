import "package:flutter/material.dart";
import "package:dice_roll_app/styled_text.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor;
  final Color secondColor;

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
      child: const Center(
        child: StyledText("Hello Manash!"),
      ),
    );
  }
}
