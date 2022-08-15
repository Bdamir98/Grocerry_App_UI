import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({required this.selectedIndex});
  int selectedIndex;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      backgroundColor: Colors.amberAccent,
      animationCurve: Curves.linear,
      selectedIndex: widget.selectedIndex,
      showElevation: false, // use this to remove appBar's elevation
      onItemSelected: (index) => setState(() {
        widget.selectedIndex = index;
      }),
      items: [
        FlashyTabBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text('Home'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.kitchen, color: Colors.black),
          title: Text('Recipe'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.account_box_outlined, color: Colors.black),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
