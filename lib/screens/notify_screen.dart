import 'package:flutter/material.dart';

class info_screen extends StatefulWidget {
  const info_screen({super.key});

  @override
  State<info_screen> createState() => _info_screenState();
}

class _info_screenState extends State<info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Info screen")),
    );
  }
}
