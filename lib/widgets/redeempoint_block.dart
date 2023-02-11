import 'package:flutter/material.dart';
import 'package:task1/utils/app_infolist.dart';

class Redeempoint_block extends StatelessWidget {
  const Redeempoint_block({
    super.key,
  });

  // final Map<String, dynamic> places;

  @override
  Widget build(BuildContext context) {
    // final size = Applayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        height: 40,
        width: 145,
        // color: Color(0xFF242424),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                "assets/images/img5.png",
                height: 40,
                width: 25,
              ),
            ),
            Center(
                child: Text(
              "Top Brand",
              style: TextStyle(
                  fontSize: 13, color: Color.fromARGB(255, 92, 90, 90)),
            )),
          ],
        ),
      ),
    );
  }
}
