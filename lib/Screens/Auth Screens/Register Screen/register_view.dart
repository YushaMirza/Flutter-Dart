// ignore_for_file: camel_case_types, duplicate_ignore, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_dunya/Auth%20Services/auth_service.dart';
import 'package:online_dunya/Screens/Auth%20Screens/Login%20Screen/login_view.dart';
import 'package:online_dunya/Error%20Messages/error_message.dart';
import 'package:online_dunya/Screens/Intro%20Screens/main_intro_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Home%20Screen/home_view.dart';

class Register_Screen extends StatefulWidget {
  final void Function()? onTap;
  const Register_Screen({super.key, this.onTap});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

// ignore: camel_case_types
class _Register_ScreenState extends State<Register_Screen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  void despose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
  }

  void registerUser() async {
    String result = await AuthServices().registerUser(
        email: emailController.text,
        password: passwordController.text,
        username: usernameController.text);

    // show loading circle
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    // if register is successfully complete user has been created and navigate to another screen

    if (passwordController.text.toString() ==
        confirmpasswordController.text.toString()) {
      setState(() {
        usernameController.clear();
        emailController.clear();
        passwordController.clear();
        confirmpasswordController.clear();
        Timer(const Duration(seconds: 2), () {
          // navigate to another screen
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const main_intro_screen()));
        });
      });
    } else {
      setState(() {
        passwordController.clear();
        confirmpasswordController.clear();
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
                          "ONLINE DUNYA",
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
                    height: 350,
                    width: 350,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 280,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Center(
                                child: TextField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Center(
                                child: TextField(
                                  obscuringCharacter: "•",
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Center(
                                child: TextField(
                                  obscuringCharacter: "•",
                                  controller: confirmpasswordController,
                                  decoration: InputDecoration(
                                    hintText: "Confirm Password",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 530, left: 68, right: 68),
                    child: InkWell(
                        onTap: () {
                          registerUser();
                        },
                        child: Container(
                          height: 48,
                          width: 254,
                          decoration: BoxDecoration(
                              color: const Color(0xff2A4BA0),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            "REGISTER",
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
                      "Already have an account?",
                      style: TextStyle(color: Color.fromARGB(150, 0, 0, 0)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const login_screen()));
                        },
                        child: const Text(
                          "Login Here",
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
