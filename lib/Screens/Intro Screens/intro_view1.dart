import 'package:flutter/material.dart';
import 'package:online_dunya/Screens/Main%20Screens/Home%20Screen/home_view.dart';


// ignore: camel_case_types
class intro_screen1 extends StatelessWidget {
  const intro_screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2A4BA0),
        body: Column(children: [
          Container(
            width: 294,
            height: 140,
            margin: const EdgeInsets.only(top: 33, left: 42, right: 42),
            child: const Text(
              "Your holiday shopping delivered to Screen one",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            width: 272,
            height: 66,
            margin: const EdgeInsets.only(top: 1, left: 42, right: 42),
            child: const Text(
              "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
              style: TextStyle(
                  color: Color.fromARGB(197, 255, 255, 255), fontSize: 17),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 45, right: 7),
                height: 3.0,
                width: 30.0,
                color: Colors.white,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 3.0,
                width: 23.0,
                color: const Color.fromARGB(171, 255, 255, 255),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Icon(Icons.image_outlined,
                  size: 175, color: Color.fromARGB(180, 255, 255, 255))),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 61, right: 61),
            child: ListTile(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: const BorderSide(
                      width: 1.0, color: Color.fromARGB(168, 0, 0, 0))),
              title: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              tileColor: Colors.white,
              trailing: const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const home_screen()));
              },
            ),
          ),
        ]
        )
        );
  }
}
