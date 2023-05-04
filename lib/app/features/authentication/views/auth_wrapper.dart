import 'package:flutter/material.dart';
import 'package:food_app_ui/app/features/authentication/views/login_screen.dart';
import 'package:food_app_ui/app/features/authentication/views/register_screen.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool showSignIn = true;
  void toggleView() {
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginScreen(toggleView: toggleView);
    } else {
      return RegisterScreen(toggleView: toggleView);
    }
  }
}
