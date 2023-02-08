import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project7/screens/home_screen.dart';
import 'package:project7/screens/product_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentindex = 0;

  void _navigateBottombar(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  final List<Widget> tabs = [
    HomeScreen(),
    Center(
        child: Text(
      "search",
      style: TextStyle(fontSize: 50),
    )),
    Center(
        child: Text(
      "cart",
      style: TextStyle(fontSize: 50),
    )),
    Center(
        child: Text(
      "user",
      style: TextStyle(fontSize: 50),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: GNav(
              backgroundColor: Color(0xffFFFFFF),
              padding: EdgeInsets.all(16),
              tabBorderRadius: 50,
              gap: 8,
              tabBackgroundColor: Color(0xff53B175),
              selectedIndex: _currentindex,
              onTabChange: _navigateBottombar,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite,
                  text: "Favourite",
                ),
                GButton(
                  icon: Icons.shopping_bag,
                  text: "Cart",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Account",
                ),
              ]),
        ),
      ),
    );
  }
}
