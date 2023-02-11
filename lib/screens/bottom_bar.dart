import 'package:flutter/material.dart';
import 'package:task1/screens/notify_screen.dart';
import 'package:task1/screens/person.dart';

import 'categoryscreen.dart';
import 'home_page.dart';
// import 'notify_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    const Categorypage(),
    const info_screen(),
    const Personinfo(),
  ];

  void _onItemtapped(int index) {
    _selectedIndex = index;
    setState(() {
      print("${_selectedIndex}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemtapped,
            elevation: 14,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Color.fromARGB(255, 118, 92, 224),
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Color.fromARGB(255, 52, 53, 53),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_outlined,
                    size: 30,
                  ),
                  label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                  label: "bell"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                  label: "Person"),
            ],
          ),
        ),
      ),
    );
  }
}
