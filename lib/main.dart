import 'package:flutter/material.dart';
import 'package:order_it_dev/pages/landing.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const OrderIt());
}

class OrderIt extends StatelessWidget {
  const OrderIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}
