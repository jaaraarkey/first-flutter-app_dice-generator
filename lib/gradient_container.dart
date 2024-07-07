import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

// Define the start and end points for the gradient
const startPoint = Alignment.topLeft;
const endPoint = Alignment.bottomRight;

// Create a class called GradientContainer that extends StatelessWidget
class GradientContainer extends StatelessWidget {
  // Define the constructor for the GradientContainer class
  const GradientContainer(this.color1, this.color2, {super.key});

  // Declare two final variables to store the colors for the gradient
  final Color color1;
  final Color color2;

  // Override the build method to build the widget tree
  @override
  Widget build(context) {
    // Return a Container widget with a gradient decoration
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startPoint, end: endPoint, colors: [color1, color2]),
      ),
      // Add a child widget to the Container, which is a Center widget containing a DiceRoller widget
      child: const Center(child: DiceRoller()),
    );
  }
}

// The commented code below is an alternative implementation of the GradientContainer class

// import 'package:first_app/styled_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// const startPoint = Alignment.topLeft;
// const endPoint = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.text, this.colors, {super.key});
//   final String text;
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: startPoint,
//             end: endPoint,
//             colors: colors,
//           ),
//         ),
//         child: Center(
//           child: StyledText(text),
//         ));
//   }
// }
