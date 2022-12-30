import 'package:Fereej_test3/pages/Profile%20page/Account_information.dart';
import 'package:Fereej_test3/pages/Profile%20page/SavedCards.dart';
import 'package:Fereej_test3/pages/Profile%20page/Saved_addresses.dart';
import 'package:Fereej_test3/pages/Profile%20page/change_email.dart';
import 'package:Fereej_test3/pages/Profile%20page/change_password.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/Me.jpg'),
                      ),
                      Text(
                        'Abdulrahman Mufarrah',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(0xff, 36, 35, 33),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AccountInformation(),
                                ),
                              );
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ACCOUNT INFORMATION',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SavedAddresses(),
                                ),
                              );
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MY SAVED ADDRESSES',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SavedCards(),
                                ),
                              );
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MY SAVED CARDS',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangeEmail(),
                                ),
                              );
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CHANGE MY EMAIL',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()),
                              );
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CHANGE MY PASSWORD',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(0xff, 36, 35, 33),
                                ),
                              ),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LANGUAGE',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'English',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(FontAwesomeIcons.arrowRight),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'COUNTRY',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'BAHRAIN',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(FontAwesomeIcons.arrowRight),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'LOG OUT',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(0xff, 36, 35, 33),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
