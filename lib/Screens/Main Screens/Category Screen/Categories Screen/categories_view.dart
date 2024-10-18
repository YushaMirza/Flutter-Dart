import 'package:flutter/material.dart';
import 'package:online_dunya/Screens/Main%20Screens/Category%20Screen/Products%20Screen/products_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Favourite%20Screen/favourites_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Home%20Screen/home_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Setting%20Screen/setting_view.dart';

// ignore: camel_case_types
class categories_screen extends StatefulWidget {
  const categories_screen({super.key});

  @override
  State<categories_screen> createState() => _categories_screenState();
}

// ignore: camel_case_types
class _categories_screenState extends State<categories_screen> {
  bool isPressed1 = true;
  bool isPressed2 = false;
  bool isPressed3 = true;
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
                        isPressed2 = true;
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
                                builder: ((context) =>
                                    const categories_screen())));
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
                                builder: ((context) =>
                                    const favourites_screen())));
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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              Container(
                width: 376,
                height: 252,
                color: const Color(0xff2A4BA0),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 51, left: 15, right: 20),
                        child: const Text(
                          "Hey, Halal",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 47, left: 80, right: 30),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search,
                                size: 30, color: Colors.white)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 47, right: 9),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Badge(
                                child: Icon(Icons.store,
                                    size: 30, color: Colors.white))),
                      )
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 17, left: 20, right: 226),
                    child: const Text(
                      "Shop",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 63),
                    child: const Text(
                      "By Category",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ]),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              height: 36,
                              width: 132,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffF9B023)),
                              child: const Center(
                                  child: Text(
                                "Meats & Fishes",
                                style: TextStyle(color: Colors.white),
                              ))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 36,
                              width: 108,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all()),
                              child: const Center(child: Text("Vegetables"))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 36,
                              width: 71,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all()),
                              child: const Center(child: Text("Fruits"))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 36,
                              width: 108,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all()),
                              child: const Center(child: Text("Vegetables"))),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      height: 167,
                      width: 308,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const products_screen()));
                            },
                            child: Container(
                              height: 167,
                              width: 137,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffFFDC83),
                              ),
                              child: const Icon(
                                Icons.image_outlined,
                                size: 65,
                                color: Color.fromARGB(119, 0, 0, 0),
                              ),
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "   Big & Small Fishes",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Fresh From Sea       ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Starting from                ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$36",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff2A4BA0)),
                                  ),
                                  Text(
                                    "/KG                    ",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff2A4BA0)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      height: 167,
                      width: 308,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const products_screen()));
                            },
                            child: Container(
                              height: 167,
                              width: 137,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffFFC3BB),
                              ),
                              child: const Icon(
                                Icons.image_outlined,
                                size: 65,
                                color: Color.fromARGB(119, 0, 0, 0),
                              ),
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Halal Meats         ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   Organics & Fresh       ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Starting from                ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$90",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff2A4BA0)),
                                  ),
                                  Text(
                                    "/KG                    ",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff2A4BA0)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      height: 167,
                      width: 308,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const products_screen()));
                            },
                            child: Container(
                              height: 167,
                              width: 137,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 237, 255, 165),
                              ),
                              child: const Icon(
                                Icons.image_outlined,
                                size: 65,
                                color: Color.fromARGB(119, 0, 0, 0),
                              ),
                            ),
                          ),
                          const Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Fruits                  ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   Fresh & Organic       ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "  Starting from                ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(149, 0, 0, 0)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Text(
                                    " \$56",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff2A4BA0)),
                                  ),
                                  Text(
                                    "/KG                    ",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff2A4BA0)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ])));
  }
}
