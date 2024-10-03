import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final double padding;
  const SectionTitle({super.key, required this.title, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(padding, 8.0, padding, 8.0),
      child: SizedBox(
          height: 50,
          width: 392,
          child: Text(title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.purple
              ))),
    );
  }
}
