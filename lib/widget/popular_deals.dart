import 'package:flutter/material.dart';
import 'package:grocerry/screens/popular_deals_page.dart';

class PopularItem extends StatefulWidget {
  const PopularItem({Key? key}) : super(key: key);

  @override
  State<PopularItem> createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Deals',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PopularDealsPage()),
                      );
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFB7A81),
                                Color(0xffFEB096),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 130, left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cooking',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Review',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      '(1.2k)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(75, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(1),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(1),
                              bottomRight: Radius.circular(80),
                            ),
                          ),
                          child: Image.asset(
                            'images/popular/cooking.png',
                            height: 120,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff768EE8),
                                Color(0xff5A62DE),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 130, left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Breakfast',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Review',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      '(1.1k)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(75, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(1),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(1),
                              bottomRight: Radius.circular(80),
                            ),
                          ),
                          child: Image.asset(
                            'images/popular/breakfast.png',
                            height: 120,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffFE98B7),
                                Color(0xffFF5489),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 130, left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fruits',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Review',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      '(1k)',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(75, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(1),
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(1),
                              bottomRight: Radius.circular(80),
                            ),
                          ),
                          child: Image.asset(
                            'images/popular/fruits-vegetables.png',
                            height: 120,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
