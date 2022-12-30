import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../widgets/LoginPage_Widgets/XDOval2.dart';
import '../../widgets/LoginPage_Widgets/XDOval1.dart';

import '../Home pages/main_page.dart';
// import 'Email_Entry.dart';

class OtpSignIn extends StatefulWidget {
  OtpSignIn({
    Key key,
  }) : super(key: key);

  @override
  _OtpSignInState createState() => _OtpSignInState();
}

class _OtpSignInState extends State<OtpSignIn> {
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
            Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
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
                                SizedBox(width: 10),
                                Container(
                                    height: 50.h,
                                    width: 260.w,
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Enter Your OTP Code Here',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey[500]),
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 50),
                          child: Container(
                            child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              onChanged: (value) {
                                print(value);
                              },
                              pinTheme: PinTheme(
                                inactiveColor: Color.fromARGB(0xff, 36, 35, 33),
                                activeFillColor:
                                    Color.fromARGB(0xff, 242, 96, 39),
                                activeColor: Color.fromARGB(0xff, 242, 96, 39),
                              ),
                            ),
                          ),
                        ),

                        //Resend Code timer here ,
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'RESEND CODE',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Container(
                            height: 40.h,
                            width: 150.w,
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
                                        builder: (context) => MainPage(),
                                      ));
                                });
                              },
                              child: Text(
                                'VERIFY',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 3),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
