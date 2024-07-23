import 'package:flutter/material.dart';
import 'package:dice_roll_app/gradient_container.dart';

void main() {
  Color firstColor = Colors.blueAccent.shade200;
  Color secondColor = Colors.blueAccent.shade100;

  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(firstColor, secondColor),
      ),
    ),
  );
}
