import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startPoint = Alignment.topLeft;
const endPoint = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startPoint, end: endPoint, colors: [color1, color2]),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

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
