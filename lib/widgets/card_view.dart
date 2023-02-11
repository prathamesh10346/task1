import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> theatres;
  // final bool? isColor;
  const TicketView({
    Key? key,
    required this.theatres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getHeight(200),
      child: Container(
        height: Applayout.getHeight(50),
        margin: EdgeInsets.only(right: Applayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 15, 15),
                // color: isColor == null ? const Color(0xFF628395) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Applayout.getHeight(21)),
                    topRight: Radius.circular(Applayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              theatres['place']['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Applayout.getHeight(20)),
                            ),
                          ),
                          // const Text("  "),
                          Text(
                            theatres['loc']['code'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Applayout.getHeight(16)),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                      Padding(
                        padding: EdgeInsets.all(Applayout.getHeight(8.0)),
                        child: Text(" "),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          theatres['on'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Applayout.getHeight(16)),
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.navigation, color: Colors.white),
                      Center(
                        child: Text(theatres['state'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Applayout.getHeight(16))),
                      ),
                      // Text(
                      //   theatres['state'],
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: Applayout.getHeight(1)),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Applayout.getHeight(21)),
                    bottomRight: Radius.circular(Applayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                theatres['Exact'],
                              ),
                              // const Gap(5),
                              Text(
                                theatres['on'],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            theatres['state'],
                          ),
                          // const Gap(5),
                          Text(
                            theatres['time'],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
