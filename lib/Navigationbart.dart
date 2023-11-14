import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Accounts.dart';
import 'HomePage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.shopping_bag_outlined,
    Icons.shopping_cart_outlined,
    // Icons.wallet_outlined,
    Icons.person_outline,
  ];

  List<Widget> pagesList = <Widget>[
    HomePage(), // Home Page
    Container(), // Shopping Bag Page
    Container(), // Shopping Cart Page
    // Container(), // Wallet Page
    AccountPage(), // Account Page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Color(0xff8E97FD),
        onPressed: () {
          setState(() {
            _bottomNavIndex = 4;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 70,
        notchMargin: 10,
        splashColor: Color(0xff8E97FD),
        activeColor: Color(0xff8E97FD),
        icons: iconList,
        iconSize: 30,
        elevation: 50,
        blurEffect: true,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) => setState(() {
          _bottomNavIndex = index;
        }),
      ),
      body: pagesList[_bottomNavIndex],
    );
  }
}
