import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'RECENT TRANSACTIONS',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(0xff, 36, 35, 33),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 12),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'July 2021',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(0xff, 36, 35, 33),
                  ),
                )),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.circleArrowUp,
                          size: 38,
                          color: Colors.green[700],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HALA CAFE',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                            Text(
                              'Expires in : 12/2022',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '+ 1.55 BD',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
