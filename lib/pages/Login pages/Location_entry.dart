import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Home pages/main_page.dart';

class LocationEntry extends StatefulWidget {
  @override
  _LocationEntryState createState() => _LocationEntryState();
}

class _LocationEntryState extends State<LocationEntry> {
  @override
  Widget build(BuildContext context) {
    bool _checked = false;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(FontAwesomeIcons.chevronLeft),
        title: Text('Edit Address'),
        actions: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Delete',
                  style: TextStyle(
                    fontFamily: 'Avenir Next',
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.none,
                            image: AssetImage(
                              'assets/location Image .png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 30.h,
                          width: 140.w,
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
                          // ignore: deprecated_member_use
                          child: MaterialButton(
                            color: Color.fromARGB(0xff, 36, 35, 33),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {},
                            child: Text(
                              'Adjust Location',
                              style: TextStyle(
                                color: Color.fromARGB(0xff, 242, 96, 39),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'FULL NAME',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'ADDRESS NAME (OPTIONAL)',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'HOUSE . NO / APT .NO',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'AREA/BLOCK/ROAD)',
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(0xff, 36, 35, 33),
                                  ),
                                  helperText: 'EXAMPLE:MANAMA/552/5441'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'NEAREST LANDMARK',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(width: 15),
                          Container(
                            height: 50.h,
                            width: MediaQuery.of(context).size.width * .8,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'MOBILE NUMBER',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    CheckboxListTile(
                        title: Text(
                          'MAKE DEFULT ADDRESS',
                          style: TextStyle(
                            fontFamily: 'Avenir Next',
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _checked,
                        onChanged: (bool value) {
                          setState(() {
                            _checked = value;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70.0, vertical: 10),
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
                          color: Color.fromARGB(0xff, 36, 35, 33),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainPage(),
                                ),
                              );
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                color: Color.fromARGB(0xff, 242, 96, 39),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'SAVE ADDRESS',
                                style: TextStyle(
                                    color: Color.fromARGB(0xff, 242, 96, 39),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
