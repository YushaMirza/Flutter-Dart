// ignore_for_file: camel_case_types, duplicate_ignore

import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:online_dunya/Auth%20Services/auth.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

// ignore: camel_case_types
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const AuthPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height: 800,
          width: 400,
          color: const Color(0xff2A4BA0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Icon(
                  Icons.local_grocery_store_outlined,
                  size: 90,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: Column(
                  children: [
                    Text(
                      "ONLINE",
                      style: GoogleFonts.quando(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text("DUNYA",
                    style: GoogleFonts.quando(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
