import 'package:flutter/material.dart';
import 'package:order_it_dev/components/submitButton.dart';
import 'package:order_it_dev/components/textField.dart';
import 'package:order_it_dev/firebase/firebase.dart';

class LoginWidget extends StatefulWidget {
  final bool isLoggingIn;
  const LoginWidget({super.key, required this.isLoggingIn});

  @override
  State<LoginWidget> createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginWidget> {

  // controllers
  final chefNameController = TextEditingController();
  final chefEmailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 300,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.isLoggingIn ? "Login" : "Sign Up",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20.0),

            // optional signup field: chef Name
            if (!widget.isLoggingIn)
              CustomTextField(
                controller: chefNameController,
                hintText: "Chef Name",
                hideText: false,
              ),
             const SizedBox(height: 20.0),

            // email field
            CustomTextField(
              controller: chefEmailController,
              hintText: widget.isLoggingIn ? "Chef Name or Email" : "Chef Email",
              hideText: false,
            ),
            const SizedBox(height: 20),

            // password field
            CustomTextField(
              controller: passwordController,
              hintText: "Password",
              hideText: true,
            ),
            const SizedBox(height: 20),

            CustomSubmitButton(
              buttonText: widget.isLoggingIn ? "Login" : "Sign Up", 
              onPressed: () async => {
                if (widget.isLoggingIn) {
                  await FirebaseTools.authenticate(chefEmailController.text, passwordController.text)

                  // forward
                } else {
                  await FirebaseTools.createUser(chefNameController.text, chefEmailController.text, passwordController.text)
                  // forward
                }
              }),
          ],
        ),
      ),
    );
  }
}
