// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class product_details_screen extends StatelessWidget {
  const product_details_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
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
                        const SizedBox(width:220,),
                      IconButton(onPressed: (){}, icon:const Icon( Icons.store,size: 30,)),
                                   ],
                                 ),
                   ),
                   const SizedBox(height: 20,),
                   const Text("Fish                ",style: TextStyle(fontSize: 40),),
                   const Text(" Clown Tang.H03   ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 40),),
                   const SizedBox(height: 5,),
                   const Row(
                     children: [
                      SizedBox(width: 30,),
                       Icon(Icons.star,color: Color(0xffF9B023),),
                   Icon(Icons.star,color: Color(0xffF9B023),),
                   Icon(Icons.star,color: Color(0xffF9B023),),
                   Icon(Icons.star,color: Color(0xffF9B023),),
                   Icon(Icons.star,color: Color.fromARGB(255, 105, 75, 16),),
                   Text(" 110 Reviews",style: TextStyle(color: Color.fromARGB(116, 0, 0, 0)),),
                     ],
                   ),
                    const SizedBox(height: 15,),
                     Row(
                      children: [
                        const SizedBox(width: 10,),
                   SizedBox(
                    width: 150,
                    height: 160,
                    child: Column(children: [
                      const SizedBox(height: 25,),
                      const Icon(Icons.image_outlined,size: 73,color: Color.fromARGB(100, 128, 128, 128),),
                      const SizedBox(height: 50,),
                      Row(children: [
                        const SizedBox(width: 20,),
                        Container(width: 19,height: 4,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF9B023)),),
                        const SizedBox(width: 5,),
                        Container(width: 19,height: 4,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(78, 0, 0, 0)),),
                        const SizedBox(width: 5,),
                        Container(width: 19,height: 4,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(88, 0, 0, 0)),),
                      ],)
                    ],),
                    ),
                    const SizedBox(width: 100,),
                    Container(
                      height: 127,
                      width: 56,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(162, 231, 230, 230),),
                      child: const Column(children: [
                        SizedBox(height: 20),
                        Icon(Icons.favorite_border_rounded,color: Color.fromARGB(152, 0, 0, 0),),
                        SizedBox(height: 40),
                        Icon(Icons.more_horiz,color: Color.fromARGB(128, 0, 0, 0),)
                      ],),
                    )
                      ],
                   ),
                   const SizedBox(height: 35,),
                       Row(children: [
                      const SizedBox(width: 20,),
                      const Text(
                                        "\$34.70",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xff2A4BA0)),
                                      ),
                                      const Text(
                                        "/KG   ",
                                        style: TextStyle(
                                            fontSize: 18, color: Color(0xff2A4BA0)),
                                      ),
                                      Container(width:90 ,height:26 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xff2A4BA0)),child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(" \$22.04 OFF",style: TextStyle(color: Colors.white),),
                                      ),),
                                      const Text("         Reg: \$56.70 USD",style: TextStyle(color: Color.fromARGB(206, 158, 158, 158),fontSize: 14),)
                                     ],),
                                     const SizedBox(height: 30,),
                                     Row(
                                       children: [
                                        const SizedBox(width: 16,),
                                         Container(height: 56,width: 143,decoration: BoxDecoration(border: Border.all(color: const Color(0xff2A4BA0)),borderRadius: BorderRadius.circular(20)),child: const Center(child: Text("Add To Cart",style: TextStyle(color: Color(0xff2A4BA0),fontSize: 15),)),),
                                         const SizedBox(width: 20,),
                                     Container(width: 169,height: 56,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xff2A4BA0)),child: const Center(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 15),)),)
                                       ],
                                     ),
                                     const SizedBox(height: 30,),
                                      const SizedBox(width:320,height:120 , child: Column(
                                        crossAxisAlignment:CrossAxisAlignment.start ,
                                        children: [
                                          Text("Details",style: TextStyle(fontSize: 18),),
                                          SizedBox(height:12 ,),
                                          Text("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",style: TextStyle(color: Colors.black54,fontSize: 16),)
                                        ],
                                      )),
                                       InkWell(
                                        onTap: () {},
                                         child: const Row(children: [
                                          SizedBox(width: 20,),
                                          Text("Nutritional Facts",style: TextStyle(fontSize: 16),),
                                          SizedBox(width: 170,),
                                          Icon(Icons.arrow_drop_down_rounded,size: 30,)
                                         ],),
                                       ),
                                       const Text("________________________________________________    "),
                                       const SizedBox(height: 10,),
                                       InkWell(
                                        onTap: () {},
                                         child:  const Row(children: [
                                          SizedBox(width: 20,),
                                          Text("Reviews",style: TextStyle(fontSize: 16),),
                                          SizedBox(width: 230,),
                                          Icon(Icons.arrow_drop_down_rounded,size: 30,),
                                         ],),
                                       ),
                                       const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
