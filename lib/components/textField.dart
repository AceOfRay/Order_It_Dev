import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final bool hideText;
  final String hintText;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hideText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
      ),
      obscureText: hideText,
    );
  }
}
