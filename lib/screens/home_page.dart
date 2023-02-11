import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:task1/screens/categoryscreen.dart';
import 'package:task1/utils/app_layout.dart';
import 'package:task1/widgets/card_view.dart';
import 'package:task1/widgets/listcategory.dart';
import 'package:task1/widgets/small_bloc.dart';

import '../utils/app_infolist.dart';
// import 'lib\utils\app_infolist.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // get places => ;

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 235, 235),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 402,
                  height: 50,
                  // constraints: BoxConstraints(maxHeight: 402, maxWidth: 402),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 219, 218, 218),
                        offset: Offset(0, 8),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Center(
                      child: Text("rywards",
                          style: TextStyle(
                              color: Color.fromARGB(255, 17, 17, 17),
                              fontSize: 28,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: const Color.fromARGB(255, 254, 254, 254),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          left: 38,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              color: const Color.fromARGB(255, 105, 76, 224),
                            ),
                            child: const Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Search nearby registeres outlets",
                          style: TextStyle(
                            color: Color.fromARGB(255, 17, 17, 17),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Transform.rotate(
                                angle: 19.5,
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.navigation,
                                  color: const Color.fromARGB(255, 2, 2, 2),
                                  size: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                "Covent garden",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 17, 17, 17),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color.fromARGB(255, 105, 76, 224),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                            ]),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      // constraints: BoxConstraints(maxHeight: 402, maxWidth: 402),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 219, 218, 218),
                            offset: Offset(0, 8),
                            blurRadius: 10,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 113, 85, 224),
                      ),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            width: 9,
                          ),
                          const Icon(
                            Icons.pentagon_outlined,
                            color: Color.fromARGB(255, 230, 229, 234),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "12 Points",
                            style: TextStyle(
                              color: Color.fromARGB(255, 243, 241, 241),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                // height: 40,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Placeslist.map((singletheatres) => Listcategaory(
                          places: singletheatres,
                        )).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 219, 218, 218),
                        offset: Offset(0, 8),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 50,
                  child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Resturent, grocery, cafe, bar, cafes',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                        prefixIcon: Container(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Resturent, grocery, cafe, bar...',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Icon(
                                  Icons.settings_input_component_sharp,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              ],

                              // width: 18,
                            )),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 203, 202, 202),
                      offset: Offset(0, 8),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 252, 251, 251),
                ),
                height: 220,
                child: Column(
                  children: [
                    // SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: placesss
                            .map((singletheatres) => TicketView(
                                  theatres: singletheatres,
                                ))
                            .toList(),
                      ),
                    ),
                    Transform.rotate(
                      angle: 199.5,
                      // ignore: prefer_const_constructors
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Categorypage()));
                        },
                        child: const Icon(
                          Icons.navigate_before,
                          color: Color.fromARGB(255, 162, 159, 159),
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text("Convert your ", style: TextStyle(fontSize: 16)),
                    const Text("rywards ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text("into ", style: TextStyle(fontSize: 16)),
                    const Text("gift card",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 150,
                    height: 50,
                    // constraints: BoxConstraints(maxHeight: 402, maxWidth: 402),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          offset: Offset(0, 8),
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Applayout.getHeight(12)),
                          bottomLeft: Radius.circular(Applayout.getHeight(12))),
                      color: const Color.fromARGB(255, 113, 85, 224),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 9,
                        ),
                        const Icon(
                          Icons.pentagon_outlined,
                          color: Color.fromARGB(255, 230, 229, 234),
                          size: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "12 Points",
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 241, 241),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          offset: Offset(0, 8),
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Applayout.getHeight(12)),
                          bottomRight:
                              Radius.circular(Applayout.getHeight(12))),
                      color: const Color(0xFF242424),
                    ),
                    height: 50,
                    width: 150,
                    // color: Color(0xFF242424),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                          child: Text(
                            "Redeem Now",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 42, 42, 43),
                          ),
                          child: const Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 230, 229, 234),
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // ignore: prefer_const_literals_to_create_immutables
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 1,
                          ),
                          const Text("Top Resgistred Outlets",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Earn from offline and online stores",
                              style: TextStyle(
                                fontSize: 13,
                              )),
                        ]),
                    const SizedBox(
                      width: 30,
                    ),
                    const Center(
                      child: Icon(Icons.arrow_forward,
                          color: Color.fromARGB(255, 45, 45, 45), size: 30),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SmallBlockwidgets(),
              const SmallBlockwidgets(),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 42, 42, 43),
                          ),
                          child: const Icon(
                            Icons.trending_up_rounded,
                            color: Color.fromARGB(255, 230, 229, 234),
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // ignore: prefer_const_literals_to_create_immutables
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 1,
                          ),
                          const Text("Redeem Points",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Convert points and get free gift cards",
                              style: TextStyle(
                                fontSize: 13,
                              )),
                        ]),
                    const SizedBox(
                      width: 30,
                    ),
                    const Center(
                      child: Icon(Icons.arrow_forward,
                          color: Color.fromARGB(255, 45, 45, 45), size: 30),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Container(
//               // ignore: prefer_const_constructors
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10.0),
//                         // Color(0xFE5E5E5),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )