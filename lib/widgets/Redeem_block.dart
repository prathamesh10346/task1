// import 'package:bookmyshow1/utils/app_style.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class RedemBlock extends StatelessWidget {
  const RedemBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RedeemBlock(),
          // RedeemBlock(),
        ],
      ),
    );
  }
}

class RedeemBlock extends StatelessWidget {
  // final Map<String, dynamic> Movie;

  const RedeemBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);

    return Container(
        padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: Applayout.getHeight(240),
              width: size.width * 0.38,
              padding: EdgeInsets.symmetric(
                  horizontal: Applayout.getHeight(0),
                  vertical: Applayout.getWidth(0)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Container(
                      height: Applayout.getHeight(120),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Applayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img7.png"))),
                    ),
                  ),
                  Gap(Applayout.getHeight(10)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "StarBucks",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Gap(Applayout.getHeight(2)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Coffee Shop",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Gap(Applayout.getHeight(5)),
                  Container(
                    child: Row(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 74,
                              height: 35,
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
                                    topLeft: Radius.circular(
                                        Applayout.getHeight(12)),
                                    bottomLeft: Radius.circular(
                                        Applayout.getHeight(12))),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  const Icon(
                                    Icons.euro,
                                    color: Color.fromARGB(255, 22, 22, 23),
                                    size: 25,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "12",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 26, 26, 26),
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
                                    topRight: Radius.circular(
                                        Applayout.getHeight(12)),
                                    bottomRight: Radius.circular(
                                        Applayout.getHeight(12))),
                                color: Color.fromARGB(255, 83, 117, 219),
                              ),
                              height: 35,
                              width: 82,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: const Center(
                                      child: Text(
                                        "7 rywards points",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ]),
                  )
                ],
              ),
            ),
            Gap(Applayout.getHeight(20)),
            Container(
                height: Applayout.getHeight(240),
                width: size.width * 0.38,
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(0),
                    vertical: Applayout.getWidth(0)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        height: Applayout.getHeight(120),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Applayout.getHeight(12)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/img9.png"))),
                      ),
                    ),
                    Gap(Applayout.getHeight(10)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "ASOS",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Gap(Applayout.getHeight(2)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Ecomeerce",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Gap(Applayout.getHeight(5)),
                    Container(
                      child: Row(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 74,
                                height: 35,
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
                                      topLeft: Radius.circular(
                                          Applayout.getHeight(12)),
                                      bottomLeft: Radius.circular(
                                          Applayout.getHeight(12))),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    const Icon(
                                      Icons.euro,
                                      color: Color.fromARGB(255, 22, 22, 23),
                                      size: 25,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    const Text(
                                      "10",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 26, 26, 26),
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
                                      topRight: Radius.circular(
                                          Applayout.getHeight(12)),
                                      bottomRight: Radius.circular(
                                          Applayout.getHeight(12))),
                                  color: Color.fromARGB(255, 83, 117, 219),
                                ),
                                height: 35,
                                width: 82,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: const Center(
                                        child: Text(
                                          "7 rywards points",
                                          style: TextStyle(
                                              fontSize: 9, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ]),
                    )
                  ],
                )),
          ],
        ));
  }
}
