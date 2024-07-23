import 'package:flutter/material.dart';
import 'package:dice_roll_app/gradient_container.dart';

void main() {
  Color firstColor = Colors.indigo.shade500;
  Color secondColor = Colors.indigo.shade400;

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(firstColor, secondColor),
      ),
    ),
  );
}
