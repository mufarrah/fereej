import 'package:Fereej_test3/pages/Profile%20page/transactions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../pages/Profile page/cards_list.dart';

class WalletIcons extends StatefulWidget {
  @override
  _WalletIconsState createState() => _WalletIconsState();
}

class _WalletIconsState extends State<WalletIcons> {
  int selectedIndex = 0;
  List<Icon> wallet = [
    Icon(FontAwesomeIcons.ccVisa),
    Icon(FontAwesomeIcons.chartLine)
  ];

  List<String> iconsName = [
    'MANAGE CARDS',
    'TRANSACTIONS',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Container(
            height: 150,
            child: ListView.builder(
              itemCount: wallet.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Container(
                            height: 70.0,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: index == selectedIndex
                                    ? Color.fromARGB(0xff, 36, 35, 33)
                                    : Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(150),
                              color: index == selectedIndex
                                  ? Color.fromARGB(0xff, 242, 96, 39)
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: index == selectedIndex
                                        ? Offset(0, 0)
                                        : Offset(0, 0),
                                    blurRadius: index == selectedIndex ? 8 : 0,
                                    color: index == selectedIndex
                                        ? Colors.grey
                                        : Colors.white),
                              ],
                            ),
                            child: Icon(
                              wallet[index].icon,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        iconsName[index],
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Color.fromARGB(0xff, 242, 96, 39)
                              : Color.fromARGB(0xff, 36, 35, 33),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        selectedIndex == 0 ? CardsList() : Transactions(),
      ],
    );
  }
}
