// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:online_dunya/Screens/Main%20Screens/Category%20Screen/Product%20Details/product_details_view.dart';

class products_screen extends StatelessWidget {
  const products_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                   Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(51, 158, 158, 158)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:const Icon( Icons.arrow_back_ios,)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                   const Text("Big & Small Fishes",style: TextStyle(fontSize: 19),),
                   const SizedBox(width: 25,),
                  IconButton(onPressed: (){}, icon:const Icon( Icons.search_rounded,size: 30,)),
                  const SizedBox(width: 3,),
                  IconButton(onPressed: (){}, icon:const Icon( Icons.store,size: 30,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [Container(height: 36,width: 84,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF9B023)), child:const Center(child: Text("Popular",style: TextStyle(color: Colors.white),))),
                  const SizedBox(width: 10,),
                  Container(height: 36,width: 96,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all()), child:const Center(child: Text("Low Price"))),
                  const SizedBox(width: 10,),
                  Container(height: 36,width: 115,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all()), child:const Center(child: Text("Small Fishes"))),
                  const SizedBox(width: 10,),
                  Container(height: 36,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all()), child:const Center(child: Text("Big Fishes"))),
                  const SizedBox(width: 20,),
                  ],
                ),
              ),
            ),
            Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const product_details_screen())));
                          },
                            child: Container(
                                margin: const EdgeInsets.only(left: 20, top: 15),
                                height: 194,
                                width: 154,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(158, 224, 226, 238),
                                    borderRadius: BorderRadius.circular(10)),
                                child:  Center(
                                    child: Column(children: <Widget>[
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Icon(
                                    Icons.image_outlined,
                                    size: 65,
                                    color: Color.fromARGB(100, 128, 128, 128),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color: Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$325",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Clown Tang.H03")
                                      ],
                                    ),
                                  ),
                                ]))),
                          
                        ),
                        Container(
                              margin: const EdgeInsets.only(left: 20, top: 15),
                              height: 194,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(158, 224, 226, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                  child: Column(children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.image_outlined,
                                  size: 65,
                                  color: Color.fromARGB(100, 128, 128, 128),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color:Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$89",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Clownfish.H03")
                                    ],
                                  ),
                                ),
                              ]))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                              margin: const EdgeInsets.only(left: 20, top: 15),
                              height: 194,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(158, 224, 226, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                  child: Column(children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.image_outlined,
                                  size: 65,
                                  color: Color.fromARGB(100, 128, 128, 128),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color: Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$89",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Gold Fish.H03")
                                    ],
                                  ),
                                ),
                              ]))),
                        Container(
                              margin: const EdgeInsets.only(left: 20, top: 15),
                              height: 194,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(158, 224, 226, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                  child: Column(children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.image_outlined,
                                  size: 65,
                                  color: Color.fromARGB(100, 128, 128, 128),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color: Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 60),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$325",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Fish.H03")
                                    ],
                                  ),
                                ),
                              ]))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                              margin: const EdgeInsets.only(left: 20, top: 15),
                              height: 194,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(158, 224, 226, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                  child: Column(children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.image_outlined,
                                  size: 65,
                                  color: Color.fromARGB(100, 128, 128, 128),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color: Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$89",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Clownfish.H03")
                                    ],
                                  ),
                                ),
                              ]))),
                        Container(
                              margin: const EdgeInsets.only(left: 20, top: 15),
                              height: 194,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(158, 224, 226, 238),
                                  borderRadius: BorderRadius.circular(10)),
                              child:  Center(
                                  child: Column(children: <Widget>[
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.image_outlined,
                                  size: 65,
                                  color: Color.fromARGB(100, 128, 128, 128),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle,color: Color.fromARGB(255, 22, 134, 225),size: 30,)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$325",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Clown Tang.H03")
                                    ],
                                  ),
                                ),
                              ]))),
                      ],
                    ),
                  
              ])
          ],
        ),
      ),
    );
  }
}
