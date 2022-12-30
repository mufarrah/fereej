import 'package:Fereej_test3/pages/Home%20pages/main_page.dart';
import 'package:Fereej_test3/pages/Login%20pages/Location_finder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/LoginPage_Widgets/XDOval2.dart';
import '../../widgets/LoginPage_Widgets/XDOval1.dart';
import '../../widgets/LoginPage_Widgets/XDOval3.dart';
import '../../widgets/LoginPage_Widgets/XDSkiptext.dart';

class EmailEntry extends StatefulWidget {
  EmailEntry({
    Key key,
  }) : super(key: key);

  @override
  _EmailEntryState createState() => _EmailEntryState();
}

class _EmailEntryState extends State<EmailEntry> {
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
            Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          'PLEASE ENTER YOUR INFORMATION BELLOW',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
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
                                      hintText: 'YOUR NAME',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
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
                                      hintText: 'EMAIL ADDRESS',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Container(
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
                                            builder: (context) =>
                                                LocationFinder(),
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
                                        'PROCEED',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 3),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
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
