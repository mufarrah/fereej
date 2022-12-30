import 'package:Fereej_test3/pages/Home%20pages/homeScreen2.dart';
import 'package:Fereej_test3/pages/Home%20pages/profile_page.dart';
import 'package:Fereej_test3/pages/Likes%20pages/likes_page.dart';
import 'package:Fereej_test3/pages/cart%20pages/main_cart_page.dart';
import 'package:Fereej_test3/pages/My%20orders%20pages/my_orders_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController1 = PageController();
  List<Widget> screens = [
    HomeScreen2(),
    MyOdrdersPage(),
    MainCartPage(),
    LikesPage(),
    ProfilePage()
  ];

  void _onPageChanged(int index) {}

  void onItemTapped(int selectedIndex) {
    pageController1.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController1,
        children: screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Color.fromARGB(0xff, 36, 35, 33),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color.fromARGB(0xff, 242, 96, 39),
        height: 64,
        items: <Widget>[
          Icon(
            FontAwesomeIcons.house,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.clipboardList,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.cartShopping,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.heart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.user,
            size: 30,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(milliseconds: 400),
        onTap: onItemTapped,
      ),
    );
  }
}
