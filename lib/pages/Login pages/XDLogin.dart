import 'package:Fereej_test3/pages/Login%20pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/LoginPage_Widgets/XDOval2.dart';
import '../../widgets/LoginPage_Widgets/XDOval1.dart';
import '../../widgets/LoginPage_Widgets/XDOval3.dart';
import '../../widgets/LoginPage_Widgets/XDSkiptext.dart';

import '../Home pages/main_page.dart';
import 'Login.dart';

class XDLogin extends StatefulWidget {
  XDLogin({
    Key key,
  }) : super(key: key);

  @override
  _XDLoginState createState() => _XDLoginState();
}

class _XDLoginState extends State<XDLogin> {
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'WELCOME',
                      style: TextStyle(fontSize: 30.w),
                    ),
                    SizedBox(
                      height: 400.h,
                    ),
                    Container(
                      height: 60.h,
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
                                    builder: (context) => Login(),
                                  ));
                            });
                          },
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
                      height: 60.h,
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
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ));
                          });
                        },
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
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      });
                    },
                    child: XDSkiptext()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
