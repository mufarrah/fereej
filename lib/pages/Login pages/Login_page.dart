// import 'dart:ui';

import 'package:Fereej_test3/widgets/LoginPage_Widgets/Login_Clipper.dart';
import 'package:Fereej_test3/widgets/LoginPage_Widgets/Login_Clipper3.dart';
import 'package:Fereej_test3/widgets/LoginPage_Widgets/Login_clipper1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 190),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'WELCOME',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 350,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                          color: Color.fromARGB(0xff, 36, 35, 33),
                        ),
                        borderRadius: BorderRadius.circular(150),
                        color: Color.fromARGB(0xff, 36, 35, 33),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 8,
                              color: Colors.grey),
                        ],
                      ),
                      child: MaterialButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 3),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                          color: Color.fromARGB(0xff, 36, 35, 33),
                        ),
                        borderRadius: BorderRadius.circular(150),
                        color: Color.fromARGB(0xff, 36, 35, 33),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 8,
                              color: Colors.grey),
                        ],
                      ),
                      child: MaterialButton(
                        color: Color.fromARGB(0xff, 36, 35, 33),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {},
                        child: Text(
                          'REGISTER A NEW ACCOUNT',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(0xff, 242, 96, 39),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20,
              right: -20,
              left: 280,
              bottom: 810,
              child: ClipPath(
                  clipper: LoginClipper(),
                  child: Container(
                    height: 100,
                    width: 20,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          Colors.white,
                          Color.fromARGB(80, 198, 212, 220),
                        ],
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 50,
              left: -140,
              bottom: 300,
              right: 200,
              child: ClipPath(
                  clipper: LoginClipper1(),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          Colors.white,
                          Color.fromARGB(80, 198, 212, 220),
                        ],
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 650,
              right: -100,
              left: -40,
              bottom: -200,
              child: ClipPath(
                clipper: LoginClipper3(),
                child: Container(
                  height: 100,
                  width: 20,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment(0.8, 0.0),
                      colors: [
                        Colors.white,
                        Color.fromARGB(80, 198, 212, 220),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Text(
                'SKIP',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              top: 855,
              right: 10,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
