import 'package:flutter/material.dart';
import 'package:order_it_dev/signin/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            const SizedBox(height: 20),
            const Icon(Icons.fire_truck),
            LoginWidget(isLoggingIn: isLogin),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
              child: Text(isLogin
                  ? "Don't have an account? Signup"
                  : 'Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}

//
