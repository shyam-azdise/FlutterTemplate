import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback? onPressed; // This holds the function reference that will be called when the button is pressed.

  const CustomFloatingButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed, // Triggers the passed function when the button is pressed.
      tooltip: 'Increment', // Tooltip text that appears when the user long-presses the button.
      child: const Icon(Icons.add),
    );
  }
}