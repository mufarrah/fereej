import 'package:Fereej_test3/pages/Login%20pages/OTP_SignIn.dart';
import 'package:Fereej_test3/pages/Login%20pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/LoginPage_Widgets/XDOval2.dart';
import '../../widgets/LoginPage_Widgets/XDOval1.dart';
import '../../widgets/LoginPage_Widgets/XDOval3.dart';
import '../../widgets/LoginPage_Widgets/XDSkiptext.dart';

import 'email_signIn.dart';

class Login extends StatefulWidget {
  Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(375, 813));
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.91, 0.83),
                                      end: Alignment(-0.73, -0.91),
                                      colors: [
                                        const Color(0xa9c6d4dc),
                                        const Color(0xa9f8fdff)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 50.h,
                                  width: 220.w,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your phone number',
                                      helperText: 'EXAMPLE: 33445566',
                                      helperStyle: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40.h,
                            width: 200.w,
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
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => OtpSignIn(),
                                        ));
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(FontAwesomeIcons.rightToBracket),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'CONTINUE',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 3),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40.h,
                              width: 350.w,
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
                                  onPressed: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EmailSignIn(),
                                          ));
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(FontAwesomeIcons.envelope),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20.0, left: 20),
                                        child: Text(
                                          'SIGN IN WITH EMAIL',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 3),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              height: 40.h,
                              width: 350.w,
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
                                  color: Color.fromARGB(0xff, 66, 133, 244),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.google,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'SIGN IN WITH GOOGLE',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 3,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              height: 40.h,
                              width: 350.w,
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.apple,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10),
                                        child: Text(
                                          'SIGN IN WITH APPLE',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 3,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "DON'T HAVE AN ACCOUNT ?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUp(),
                                        ));
                                  });
                                },
                                child: Text('REGISTER'))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(215.8.w, -124.1.h),
              child:
                  // Adobe XD layer: 'Oval' (component)
                  SizedBox(
                width: 254.w,
                height: 254.h,
                child: XDOval1(),
              ),
            ),
            Transform.translate(
              offset: Offset(-271.3.w, 244.4.h),
              child:
                  // Adobe XD layer: 'Oval' (component)
                  SizedBox(
                width: 379.w,
                height: 379.h,
                child: XDOval2(),
              ),
            ),
            Transform.translate(
              offset: Offset(288.8.w, 731.4.h),
              child:
                  // Adobe XD layer: 'Oval' (component)
                  SizedBox(
                width: 129.w,
                height: 129.h,
                child: XDOval3(),
              ),
            ),
            Transform.translate(
              offset: Offset(325.w, 775.h),
              child:
                  // Adobe XD layer: 'Skip text' (component)
                  SizedBox(
                width: 36.w,
                height: 24.h,
                child: XDSkiptext(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
