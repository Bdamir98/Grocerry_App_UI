import 'package:flutter/material.dart';
import 'package:grocerry/screens/home_screens.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(80, 170, 226, 226),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(108, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 10, right: 10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(118, 0, 0, 0),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                      border: Border.all(color: Colors.grey, width: 10),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260, left: 130),
                child: Text(
                  'Amir Hossain',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290, left: 160),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 370, left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.history),
                          ),
                          title: Text(
                            'Order History',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.home),
                          ),
                          title: Text(
                            'Delivery Address',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.credit_card),
                          ),
                          title: Text(
                            'Card And Payment',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.my_location),
                          ),
                          title: Text(
                            'Tracking my Orders',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
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
