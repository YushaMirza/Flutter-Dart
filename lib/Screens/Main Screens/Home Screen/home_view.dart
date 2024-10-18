import 'package:flutter/material.dart';

import 'package:online_dunya/Screens/Main%20Screens/Category%20Screen/Categories%20Screen/categories_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Favourite%20Screen/favourites_view.dart';
import 'package:online_dunya/Screens/Main%20Screens/Setting%20Screen/setting_view.dart';

// ignore: camel_case_types
class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

// ignore: camel_case_types
class _home_screenState extends State<home_screen> {
  bool isPressed1 = false;
  bool isPressed2 = true;
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
      body: Column(
        children: <Widget>[
          Container(
            width: 376,
            height: 230,
            color: const Color(0xff2A4BA0),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 35, left: 15, right: 20),
                    child: const Text(
                      "Hey, Halal",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 47, left: 155, right: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Badge(
                            child: Icon(Icons.store,
                                size: 30, color: Colors.white))),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 26, 58, 139),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    hintText: "Search Products or store",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(137, 255, 255, 255)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 120, top: 20, bottom: 2),
                    child: Text(
                      "DELIVERY TO",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(160, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 23, left: 70, right: 10, bottom: 10),
                    child: const Text(
                      "WITHIN",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(160, 255, 255, 255)),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10, left: 19, right: 7, bottom: 5),
                    child: const Text(
                      "Green Way 3000, Sylhet",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child:
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: const Text(
                      "1 Hour",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child:
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                  ),
                ],
              )
            ]),
          ),
          Column(
            children: [
              Column(
                children: <Widget>[
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF9B023),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 123,
                                width: 269,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Icon(
                                          Icons.image_outlined,
                                          color: Colors.white,
                                          size: 80,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 15, right: 80),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, bottom: 5, right: 25),
                                              child: Text(
                                                "Get",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 20, bottom: 8),
                                            child: Text(
                                              "50% OFF",
                                              style: TextStyle(
                                                  fontSize: 26,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 15, right: 20),
                                            child: Text(
                                              "On first 03 order",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            decoration: BoxDecoration(
                                color: const Color(0xffF9B023),
                                borderRadius: BorderRadius.circular(10)),
                            height: 123,
                            width: 158,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            top: 37,
                                            right: 5,
                                            bottom: 8),
                                        child: Text(
                                          "346",
                                          style: TextStyle(
                                              fontSize: 26,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, right: 23),
                                        child: Text(
                                          "USD",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 26),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 15, right: 20),
                                      child: Text(
                                        "Your total savings",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20, right: 11),
                            decoration: BoxDecoration(
                                color: const Color(0xffE4DDCB),
                                borderRadius: BorderRadius.circular(10)),
                            height: 123,
                            width: 158,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            top: 37,
                                            right: 5,
                                            bottom: 8),
                                        child: Text(
                                          "215",
                                          style: TextStyle(
                                              fontSize: 26,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, right: 23),
                                        child: Text(
                                          "HRS",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 26),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 15, right: 20),
                                      child: Text(
                                        "Your time saved",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, right: 130, left: 20),
                child: Text(
                  "Recommended",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 224, 226, 238),
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 20, top: 15),
                        height: 130,
                        width: 120,
                        child:  Column(
                          children: <Widget>[
                            const SizedBox(height: 7,),
                            const Icon(Icons.image_outlined,size: 46,color: Color.fromARGB(167, 128, 128, 128),),
                            const Text("_____________",style: TextStyle(color: Color.fromARGB(127, 158, 158, 158)),),
                            const SizedBox(height: 5,),
                             const Text("Apple Juice"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width:110,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),child:   const Row(children: [Text("  Unit",style: TextStyle(color: Color.fromARGB(255, 128, 128, 128),),),Text(" \$15   ",style: TextStyle(fontWeight: FontWeight.bold),),Icon(Icons.add_circle,color: Color.fromARGB(255, 43, 103, 255),)],)),
                            )
                            ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 224, 226, 238),
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 20, top: 15),
                        height: 130,
                        width: 120,
                        child:  Column(
                          children: <Widget>[
                            const SizedBox(height: 7,),
                            const Icon(Icons.image_outlined,size: 46,color: Color.fromARGB(167, 128, 128, 128),),
                            const Text("_____________",style: TextStyle(color:Color.fromARGB(127, 158, 158, 158)),),
                            const SizedBox(height: 5,),
                             const Text("Biryani"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width:110,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),child:   const Row(children: [Text("  Unit",style: TextStyle(color: Color.fromARGB(255, 128, 128, 128),),),Text(" \$10   ",style: TextStyle(fontWeight: FontWeight.bold),),Icon(Icons.add_circle,color: Color.fromARGB(255, 43, 103, 255),)],)),
                            )
                            ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color:  const Color.fromARGB(158, 224, 226, 238),
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 20, top: 15),
                        height: 130,
                        width: 120,
                        child:  Column(
                          children: <Widget>[
                            const SizedBox(height: 7,),
                            const Icon(Icons.image_outlined,size: 46,color: Color.fromARGB(167, 128, 128, 128),),
                            const Text("_____________",style: TextStyle(color: Color.fromARGB(127, 158, 158, 158)),),
                            const SizedBox(height: 5,),
                             const Text("Fish"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width:110,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),child:   const Row(children: [Text("  Unit",style: TextStyle(color: Color.fromARGB(255, 128, 128, 128),),),Text(" \$20   ",style: TextStyle(fontWeight: FontWeight.bold),),Icon(Icons.add_circle,color: Color.fromARGB(255, 43, 103, 255),)],)),
                            )
                            ],
                        ),
                      ),
                      Container(
                       decoration: BoxDecoration(
                            color:  const Color.fromARGB(158, 224, 226, 238),
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 20, top: 15),
                        height: 130,
                        width: 120,
                        child:  Column(
                          children: <Widget>[
                            const SizedBox(height: 7,),
                            const Icon(Icons.image_outlined,size: 46,color: Color.fromARGB(167, 128, 128, 128),),
                            const Text("_____________",style: TextStyle(color: Color.fromARGB(127, 158, 158, 158)),),
                            const SizedBox(height: 5,),
                             const Text("Pastries"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width:110,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),child:   const Row(children: [Text("  Unit",style: TextStyle(color: Color.fromARGB(255, 128, 128, 128),),),Text(" \$10   ",style: TextStyle(fontWeight: FontWeight.bold),),Icon(Icons.add_circle,color: Color.fromARGB(255, 43, 103, 255),)],)),
                            )
                            ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color:  const Color.fromARGB(158, 224, 226, 238),
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 20, top: 15),
                        height: 130,
                        width: 120,
                        child:  Column(
                          children: <Widget>[
                            const SizedBox(height: 7,),
                            const Icon(Icons.image_outlined,size: 46,color: Color.fromARGB(167, 128, 128, 128),),
                            const Text("_____________",style: TextStyle(color: Color.fromARGB(127, 158, 158, 158)),),
                            const SizedBox(height: 5,),
                             const Text("Shakes"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(width:110,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),child:   const Row(children: [Text("  Unit",style: TextStyle(color: Color.fromARGB(255, 128, 128, 128),),),Text(" \$5   ",style: TextStyle(fontWeight: FontWeight.bold),),Icon(Icons.add_circle,color: Color.fromARGB(255, 43, 103, 255),)],)),
                            )
                            ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
