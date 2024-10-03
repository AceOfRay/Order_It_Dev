import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        width: 120,
        child: ElevatedButton(
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },

          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.add_box_outlined),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
