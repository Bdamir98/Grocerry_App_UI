import 'package:flutter/material.dart';
import 'package:grocerry/otp/page1.dart';
import 'package:grocerry/otp/page2.dart';
import 'package:grocerry/screens/home.dart';
import 'package:grocerry/screens/home_screens.dart';
import 'package:grocerry/screens/popular_deals_page.dart';
import 'package:grocerry/screens/profile_edit_page.dart';
import 'package:grocerry/screens/profile_page.dart';

import 'package:grocerry/sign_up.dart';
import 'package:grocerry/sign_in.dart';

import 'package:device_preview/device_preview.dart';
import 'package:introduction_slider/introduction_slider.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen(),
        home: Homes(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionSlider(
        onDone: LoginPage(),
        items: [
          IntroductionSliderItem(
            image: Image(
              image: AssetImage('images/page1.png'),
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
            title: "Welcome to Groceryus",
            description: "15000+ grocerry item available for you",
          ),
          IntroductionSliderItem(
            image: Image(
              image: AssetImage('images/page2.png'),
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
            title: "Fast Delivery",
            description: "very fast same day and custom delivery system",
          ),
          IntroductionSliderItem(
            image: Image(
              image: AssetImage('images/page3.png'),
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
            title: "Fast Delivery",
            description: "very fast same day and custom delivery system",
          ),
        ],
      ),
    );
  }
}
