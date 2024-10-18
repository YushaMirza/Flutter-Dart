// ignore_for_file: camel_case_types, duplicate_ignore, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_dunya/Auth%20Services/auth_service.dart';
import 'package:online_dunya/Error%20Messages/error_message.dart';
import 'package:online_dunya/Screens/Auth%20Screens/Register%20Screen/register_view.dart';
import 'package:online_dunya/Screens/Intro%20Screens/main_intro_view.dart';

class login_screen extends StatefulWidget {
  final void Function()? onTap;
  const login_screen({super.key, this.onTap});

  @override
  State<login_screen> createState() => _login_screenState();
}

// ignore: camel_case_types
class _login_screenState extends State<login_screen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void despose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  // login method
  void loginUser() async {
    String result = await AuthServices().loginUser(
      email: emailController.text,
      password: passwordController.text,
    );

    // show loading circle
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    // if login is successfully complete user has been created and navigate to another screen

    if (result == "Success") {
      setState(() {
        emailController.clear();
        passwordController.clear();
        Timer(const Duration(seconds: 2), () {
          // navigate to another screen
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const main_intro_screen()));
        });
      });
    } else {
      setState(() {
        passwordController.clear();
        emailController.clear();
      });
      Navigator.pop(context);

      // show the error message
      displayMessageToUser(result, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 228,
                  width: 400,
                  color: const Color(0xff2A4BA0),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Icon(
                            Icons.local_grocery_store_outlined,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "ONLINE  DUNYA",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 160, right: 15),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 152, 152, 152),
                            blurRadius: 10,
                          )
                        ]),
                    height: 280,
                    width: 350,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 280,
                          child: Column(children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: "EMAIL",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                    ))),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: TextField(
                                  obscuringCharacter: "•",
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    hintText: "PASSWORD",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 150),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color.fromARGB(148, 0, 0, 0)),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 500, left: 68, right: 68),
                    child: InkWell(
                        onTap: () {
                          loginUser();
                        },
                        child: Container(
                          height: 48,
                          width: 254,
                          decoration: BoxDecoration(
                              color: const Color(0xff2A4BA0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white),
                          )),
                        )))
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 60),
                child: Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color.fromARGB(150, 0, 0, 0)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Register_Screen()));
                        },
                        child: const Text(
                          "Register Here",
                          style: TextStyle(color: Colors.black87),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
