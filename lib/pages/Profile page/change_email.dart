import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('CHANGE YOUR EMAIL'),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Column(
                    children: [
                      Row(
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
                                hintText: 'YOUR NEW EMAIL',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
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
                                hintText: 'CONFIRM YOUR NEW EMAIL',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 155, vertical: 80),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: Color.fromARGB(0xff, 36, 35, 33),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Submit',
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
      ),
    );
  }
}
