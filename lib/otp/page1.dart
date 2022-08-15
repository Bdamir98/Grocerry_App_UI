import 'package:flutter/material.dart';
import 'package:grocerry/otp/page2.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                'images/otp1.jpg',
                height: 150,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'VERIFY YOUR PHONE NUMBER',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Enter Phone Number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset(
                    'images/flag.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+880',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Container(
                height: 45,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
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
                color: Colors.blue,
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
