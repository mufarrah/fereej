import 'package:Fereej_test3/widgets/profile%20page%20widgets/wallet_Icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SavedCards extends StatefulWidget {
  @override
  _SavedCardsState createState() => _SavedCardsState();
}

class _SavedCardsState extends State<SavedCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'SAVED CARDS',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(0xff, 36, 35, 33),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'FEREEJ CREDIT',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(0xff, 36, 35, 33),
                      ),
                    ),
                  ),
                  Text(
                    'Available Credit',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(0xff, 36, 35, 33),
                    ),
                  ),
                  Text(
                    '2.400 BD',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.green[700],
                    ),
                  ),
                  WalletIcons(),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('you clicked');
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(0xff, 36, 35, 33)),
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.white),
                            ],
                          ),
                          child: Icon(
                            FontAwesomeIcons.anglesUp,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Top Up',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('You clicked');
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(0xff, 36, 35, 33)),
                            borderRadius: BorderRadius.circular(150),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.white),
                            ],
                          ),
                          child: Icon(
                            FontAwesomeIcons.gift,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Gift Voucher',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
