import 'package:flutter/material.dart';
import 'package:grocerry/otp/page1.dart';
import 'package:grocerry/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 190, 76),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text(
              'SIGN IN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 634,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to\nRegistration Page',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Please write the correct information',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            'Do not have an Account?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
