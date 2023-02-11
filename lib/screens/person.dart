import 'package:flutter/material.dart';

class Personinfo extends StatefulWidget {
  const Personinfo({super.key});

  @override
  State<Personinfo> createState() => _PersoninfoState();
}

class _PersoninfoState extends State<Personinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("personinfo")),
    );
  }
}
