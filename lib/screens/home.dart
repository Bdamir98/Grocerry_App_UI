import 'package:flutter/material.dart';
import 'package:grocerry/screens/home_screens.dart';
import 'package:grocerry/screens/popular_deals_page.dart';
import 'package:grocerry/screens/profile_page.dart';
import 'package:grocerry/widget/navbar.dart';

class Homes extends StatelessWidget {
  int inde = 0;
  List<Widget> screen = [
    HomeScreen(),
    ProfilePage(),
    PopularDealsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[inde],
      bottomNavigationBar: NavBar(
        selectedIndex: inde,
      ),
    );
  }
}
