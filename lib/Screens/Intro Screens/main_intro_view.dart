import 'package:flutter/material.dart';
import 'package:online_dunya/Screens/Intro%20Screens/intro_view1.dart';
import 'package:online_dunya/Screens/Intro%20Screens/intro_view2.dart';

// ignore: camel_case_types
class main_intro_screen extends StatelessWidget {
  const main_intro_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [intro_screen1(), intro_screen2()],
      ),
    );
  }
}
