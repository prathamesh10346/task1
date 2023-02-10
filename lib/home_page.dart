import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 235, 235),
      body: SafeArea(
        child: Container(
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
                                color: Color.fromARGB(255, 254, 254, 254),
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
                              color: Color.fromARGB(255, 105, 76, 224),
                            ),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
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
                                  child: Icon(
                                    Icons.navigation,
                                    color: Color.fromARGB(255, 2, 2, 2),
                                    size: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "Covent garden",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 17, 17, 17),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromARGB(255, 105, 76, 224),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(
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
                        color: Color.fromARGB(255, 113, 85, 224),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.pentagon_outlined,
                            color: Color.fromARGB(255, 230, 229, 234),
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
