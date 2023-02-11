import 'package:flutter/material.dart';

class SmallBlockwidgets extends StatelessWidget {
  const SmallBlockwidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallBlock(),
          SmallBlock(),
          SmallBlock(),
        ],
      ),
    );
  }
}

class SmallBlock extends StatelessWidget {
  const SmallBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromARGB(255, 42, 42, 43),
          ),
          height: 140,
          width: 100,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 8, 8, 212),
                  ),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 230, 229, 234),
                        size: 28,
                      ),
                      Text("we can add image here",
                          style: TextStyle(
                              color: Color.fromARGB(255, 230, 229, 234),
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: const Text("Ecommerce",
                        style: TextStyle(
                            color: Color.fromARGB(255, 230, 229, 234),
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ]),
        )
      ],
    ));
  }
}
