import 'package:flutter/material.dart';

import 'home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Homepage(),
    const Homepage(),
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
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70), topLeft: Radius.circular(30)),
        ),
        child: Material(
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemtapped,
            elevation: 14,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.cyan,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: "Category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined), label: "bell"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Person"),
            ],
          ),
        ),
      ),
    );
  }
}
