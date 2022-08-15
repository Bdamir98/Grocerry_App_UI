import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffcb),
      body: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/otp2.jpg',
                height: 150,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'OTP VERIFICATION',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please Enter OTP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your OTP',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(left: 60, right: 60),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'Verify Your Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 45,
              width: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 61, 95),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'New',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
