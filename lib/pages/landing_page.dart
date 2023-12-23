import 'package:flutter/material.dart';
import 'package:plantproject/pages/fab.dart';
import 'package:plantproject/pages/homepage.dart';
import 'package:plantproject/pages/profile.dart';
import 'package:plantproject/pages/scan.dart';
import 'package:plantproject/pages/store.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    Fab(),
    Scan(),
    Store(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            print(value);
          },
          currentIndex: _currentIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          selectedIconTheme: IconThemeData(size: 35.0),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_sharp), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
      body: pages[_currentIndex],
    );
  }
}
