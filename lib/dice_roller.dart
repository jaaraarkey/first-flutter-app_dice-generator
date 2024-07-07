import 'dart:math'; // Importing the 'dart:math' library for generating random numbers.
import 'package:flutter/material.dart'; // Importing the 'flutter/material.dart' library for Flutter UI components.

final randomizer =
    Random(); // Creating an instance of the 'Random' class for generating random numbers.

class DiceRoller extends StatefulWidget {
  const DiceRoller(
      {super.key}); // Defining a constructor for the 'DiceRoller' widget that takes an optional 'key' parameter and passes it to the superclass constructor.

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); // Creating and returning an instance of the '_DiceRollerState' class.
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(6) +
      1; // Initializing 'currentDiceRoll' with a random number between 1 and 6.

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // Generating a new random number between 1 and 6 and updating 'currentDiceRoll'.
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/Dice_$currentDiceRoll.png', // Displaying an image based on the value of 'currentDiceRoll'.
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed:
              rollDice, // Calling the 'rollDice' function when the button is pressed.
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text(
            'roll dice', // Displaying the text 'roll dice' on the button.
          ),
        )
      ],
    );
  }
}
