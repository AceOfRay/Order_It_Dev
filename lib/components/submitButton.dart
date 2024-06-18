import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomSubmitButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 141, 7, 194),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      ),
      child: Text(buttonText),
    );
  }
}
