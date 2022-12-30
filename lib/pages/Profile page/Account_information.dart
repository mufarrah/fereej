import 'package:Fereej_test3/widgets/profile%20page%20widgets/gender_circules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../Home pages/main_page.dart';

class AccountInformation extends StatefulWidget {
  @override
  _AccountInformationState createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'ACCOUNT INFORMATION',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(0xff, 36, 35, 33),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MY EMAIL',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(0xff, 36, 35, 33),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'WRITE YOUR EMAIL',
                                border: InputBorder.none),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FIRST NAME',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(0xff, 36, 35, 33),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'WRITE YOUR FIRST NAME',
                                border: InputBorder.none),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DATE OF BIRTH',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(0xff, 36, 35, 33),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _dateTime == null
                                      ? 'Please enter your date of birth'
                                      : _dateTime.toString(),
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey[700]),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1930),
                                            lastDate: DateTime.now())
                                        .then((date) {
                                      setState(() {
                                        _dateTime = date;
                                      });
                                    });
                                  },
                                  child:
                                      Icon(FontAwesomeIcons.solidCalendarDays),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        'GENDER',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(0xff, 36, 35, 33),
                        ),
                      ),
                      Container(
                        child: GenderCircules(),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ADVERTISEMENTS SUBSCRIBTION',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Email Subscription',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(0xff, 36, 35, 33),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 125,
                                  child: LiteRollingSwitch(
                                    value: true,
                                    textOn: 'on',
                                    textOff: 'off',
                                    colorOn: Color.fromARGB(0xff, 242, 96, 39),
                                    colorOff: Color.fromARGB(0xff, 36, 35, 33),
                                    iconOn: FontAwesomeIcons.check,
                                    iconOff: FontAwesomeIcons.circleExclamation,
                                    textSize: 18,
                                    onChanged: (bool position) {
                                      print('the button is $position');
                                    },
                                    onDoubleTap: null,
                                    onSwipe: null,
                                    onTap: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'SMS Subscription',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(0xff, 36, 35, 33),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 125,
                                  child: LiteRollingSwitch(
                                    onTap: () {},
                                    onDoubleTap: () {},
                                    value: true,
                                    textOn: 'on',
                                    textOff: 'off',
                                    colorOn: Color.fromARGB(0xff, 242, 96, 39),
                                    colorOff: Color.fromARGB(0xff, 36, 35, 33),
                                    iconOn: FontAwesomeIcons.check,
                                    iconOff: FontAwesomeIcons.circleExclamation,
                                    textSize: 18,
                                    onChanged: (bool position) {
                                      print('the button is $position');
                                    },
                                    onSwipe: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
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
                                  builder: (context) => MainPage(),
                                ));
                          });
                        },
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.floppyDisk),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Save Changes',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 3),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
