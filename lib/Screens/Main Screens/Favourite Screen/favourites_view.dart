import 'package:flutter/material.dart';

import 'package:online_dunya/Screens/Main%20Screens/Category%20Screen/Categories%20Screen/categories_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Home%20Screen/home_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Setting%20Screen/setting_view.dart';

// ignore: camel_case_types
class favourites_screen extends StatefulWidget {
  const favourites_screen({super.key});

  @override
  State<favourites_screen> createState() => _favourites_screenState();
}

// ignore: camel_case_types
class _favourites_screenState extends State<favourites_screen> {
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = false;
  bool isPressed4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home_outlined),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const home_screen())));
                  setState(() {
                    isPressed1 = false;
                    isPressed2= true;
                    isPressed3 = true;
                    isPressed4 = true;
                  });
                },
                iconSize: (isPressed1) ? 30 : 38,
                color: (isPressed1)
                    ? const Color.fromARGB(156, 0, 0, 0)
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
              const Text("Home")
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const categories_screen())));
                    setState(() {
                      isPressed2 = false;
                      isPressed1 = true;
                      isPressed3 = true;
                      isPressed4 = true;
                    });
                  },
                  iconSize: (isPressed2) ? 30 : 38,
                  color: (isPressed2)
                      ? const Color.fromARGB(156, 0, 0, 0)
                      : const Color.fromARGB(255, 0, 0, 0),
                  icon: const Icon(
                    Icons.category_outlined,
                  )),
              const Text("Categories")
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const favourites_screen())));
                    setState(() {
                      isPressed3 = false;
                      isPressed2 = true;
                      isPressed1 = true;
                      isPressed4 = true;
                    });
                  },
                  iconSize: (isPressed3) ? 30 : 38,
                  color: (isPressed3)
                      ? const Color.fromARGB(156, 0, 0, 0)
                      : const Color.fromARGB(255, 0, 0, 0),
                  icon: const Icon(Icons.favorite_outline)),
              const Text("Favourites")
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const setting_screen())));
                    setState(() {
                      isPressed4 = false;
                      isPressed2 = true;
                      isPressed3 = true;
                      isPressed1 = true;
                    });
                  },
                  iconSize: (isPressed4) ? 30 : 38,
                  color: (isPressed4)
                      ? const Color.fromARGB(156, 0, 0, 0)
                      : const Color.fromARGB(255, 0, 0, 0),
                  icon: const Icon(Icons.settings)),
              const Text("Setting")
            ],
          ),
        ],
      ),
    ),
      body: const Center(
        child: Text(
          "Favourites",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
