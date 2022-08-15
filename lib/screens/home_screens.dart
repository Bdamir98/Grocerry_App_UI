import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:grocerry/model/data.dart';
import 'package:grocerry/screens/popular_deals_page.dart';
import 'package:grocerry/screens/profile_page.dart';
import 'package:grocerry/widget/categories_all.dart';
import 'package:grocerry/widget/navbar.dart';
import 'package:grocerry/widget/popular_deals.dart';
import 'package:grocerry/widget/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool _iconBool = false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;
ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
);

ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Color.fromARGB(255, 233, 231, 231),
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 233, 231, 231),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 233, 231, 231),
      ),
    ),
  ),
);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hand picked fresh\nitems only for you',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(Icons.notifications_none_outlined),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      _iconBool = !_iconBool;
                                    });
                                  },
                                  child:
                                      Icon(_iconBool ? _iconDark : _iconLight)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(),
                            hintText: 'Search for Anything',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CategoriesAll(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SliderPage(),
            ),
            Expanded(
              flex: 8,
              child: PopularItem(),
            ),
          ],
        ),
      ),
    );
  }
}
