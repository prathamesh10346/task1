import 'package:flutter/material.dart';
import 'package:task1/utils/app_infolist.dart';

class Listcategaory extends StatelessWidget {
  const Listcategaory({
    super.key,
    required this.places,
  });

  final Map<String, dynamic> places;

  @override
  Widget build(BuildContext context) {
    // final size = Applayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF242424),
        ),
        height: 30,
        width: 105,
        // color: Color(0xFF242424),
        child: Center(
            child: Text(
          places['from']['name'],
          style: TextStyle(fontSize: 13, color: Colors.white),
        )),
      ),
    );
  }
}
