import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            'images/Slider/slider1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Slider/slider2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Slider/slider3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/Slider/slider6.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
