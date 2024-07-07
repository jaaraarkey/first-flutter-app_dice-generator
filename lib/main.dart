import 'package:flutter/material.dart'; // Importing the Flutter Material package
import 'package:first_app/gradient_container.dart'; // Importing a custom class from another file

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          // The main widget that represents the entire screen
          body: GradientContainer(
              Colors.purple,
              Colors
                  .indigo)), // Using the custom GradientContainer widget with purple and indigo colors
    ),
  );
}
