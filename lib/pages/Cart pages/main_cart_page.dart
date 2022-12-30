import 'package:Fereej_test3/widgets/cart_widgets/my_orders%20widget.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/clippingClass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCartPage extends StatefulWidget {
  @override
  _MainCartPageState createState() => _MainCartPageState();
}

class _MainCartPageState extends State<MainCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1200,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: ClippingClass(),
                          child: Container(
                            color: Color.fromARGB(80, 198, 212, 220),
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Positioned(
                          left: 80,
                          right: 110,
                          top: 60,
                          child: Container(
                            height: 220,
                            width: 220,
                            child: Icon(
                              // ignore: deprecated_member_use
                              FontAwesomeIcons.shoppingCart,
                              size: 120,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'BASKET',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 30,
                        color: Color.fromARGB(0xff, 36, 35, 33),
                        letterSpacing: 0.6176470470428467,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'CHANGE ADDRESS',
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
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 10),
                            child: Text(
                              'DELIVERY ADDRESS',
                              style: TextStyle(
                                fontFamily: 'Avenir Next',
                                fontSize: 20,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                                letterSpacing: 0.6176470470428467,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Home 471 ROAD 5312 BLOCK 553 BUDAIYA BAHRAIN',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    MyOrders(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
