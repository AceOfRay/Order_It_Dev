import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForwardingWidget extends StatelessWidget {
  final Widget destination;
  final String text;

  const ForwardingWidget({
    super.key,
    required this.text,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.add_box_outlined),
          Text(text),
        ],
      ),
    );
  }
}
