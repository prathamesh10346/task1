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
      height: Applayout.getHeight(175),
      child: Container(
        height: Applayout.getHeight(50),
        margin: EdgeInsets.only(right: Applayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 85, 84, 84),
                    offset: Offset(0, 9),
                    blurRadius: 10,
                  ),
                ],
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
                      Transform.rotate(
                        angle: 19.5,
                        // ignore: prefer_const_constructors
                        child: Icon(
                          Icons.navigation,
                          color: Color.fromARGB(255, 248, 248, 248),
                          size: 19,
                        ),
                      ),
                      Center(
                        child: Text(theatres['state'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Applayout.getHeight(16))),
                      ),
                      SizedBox(
                        width: Applayout.getWidth(3),
                      ),
                      Text(
                        "Miles",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Applayout.getHeight(14)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 15, 15),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(137, 54, 54, 54), BlendMode.darken),
                  image: AssetImage(
                    theatres['time'],
                  ),
                  fit: BoxFit.cover,
                ),
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
                              const Text(" "),
                              // const Gap(5),
                              Text(
                                theatres['Exact'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Applayout.getHeight(20)),
                              )
                            ],
                          ),
                        ],
                      ),
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
