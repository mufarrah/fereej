import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsList extends StatefulWidget {
  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
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
                'MY CARDS',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(0xff, 36, 35, 33),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'ADD NEW CARD',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(0xff, 242, 96, 39),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(FontAwesomeIcons.ccMastercard),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'XXXX-3102',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color.fromARGB(0xff, 36, 35, 33),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Expires in : 12/2020',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(0xff, 36, 35, 33),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'EDIT',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  )
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
