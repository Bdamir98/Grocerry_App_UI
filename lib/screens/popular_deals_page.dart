import 'package:flutter/material.dart';
import 'package:grocerry/model/data.dart';

class PopularDealsPage extends StatefulWidget {
  const PopularDealsPage({Key? key}) : super(key: key);

  @override
  State<PopularDealsPage> createState() => _PopularDealsPageState();
}

class _PopularDealsPageState extends State<PopularDealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 240, 239, 239),
        child: Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Popular Deals',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      hintText: 'Search for Anything',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 8,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: PopularDeals.popularDeals.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            height: 250,
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
                                  top: 80, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${PopularDeals.popularDeals[index].name}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${PopularDeals.popularDeals[index].weight}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '৳${PopularDeals.popularDeals[index].price}',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        color: Colors.red,
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
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
                              '${PopularDeals.popularDeals[index].photo}',
                              height: 80,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
