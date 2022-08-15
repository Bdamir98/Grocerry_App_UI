import 'package:flutter/material.dart';
import 'package:grocerry/screens/home_screens.dart';
import 'package:grocerry/screens/profile_page.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: NavBar(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
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
              padding: const EdgeInsets.only(top: 240, left: 230),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.edit),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 320,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Colors.blue,
                        ),
                        hintText: 'My Phone',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Colors.blue,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Colors.blue,
                        ),
                        hintText: 'Full Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Colors.blue,
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
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
                          title: Center(
                            child: Text(
                              'Edit Information',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
