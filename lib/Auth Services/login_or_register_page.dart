import 'package:flutter/material.dart';
import 'package:online_dunya/Screens/Auth%20Screens/Login%20Screen/login_view.dart';
import 'package:online_dunya/Screens/Auth%20Screens/Register%20Screen/register_view.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially show login page
  bool showLogInPage = true;

  void togglePages() {
    setState(() {
      showLogInPage = !showLogInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogInPage) {
      return login_screen(
        onTap: togglePages,
      );
    } else {
      return Register_Screen(
        onTap: togglePages,
      );
    }
  }
}
