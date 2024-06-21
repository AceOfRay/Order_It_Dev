import 'package:flutter/material.dart';

class DevPage extends StatelessWidget {
  final String text;
  const DevPage({super.key, required this.text});
  @override
  Widget build(Object context) {
    return Text(text);
  }
}
