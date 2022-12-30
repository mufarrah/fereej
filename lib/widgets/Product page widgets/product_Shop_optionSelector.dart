import 'package:Fereej_test3/widgets/Product%20page%20widgets/Products/productsAll.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/circleCategories.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/cakesShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/icecreamShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/pancakeShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/traditionalShops.dart';
import 'package:flutter/material.dart';

import '../../pages/Home pages/homeScreen.dart';
import 'shops/ShopsAll.dart';

HomeScreen myHome = HomeScreen();

class ProductShopSelector extends StatefulWidget {
  @override
  _ProductShopSelectorState createState() => _ProductShopSelectorState();
}

class _ProductShopSelectorState extends State<ProductShopSelector> {
  PageController pageController = PageController(initialPage: 0);

  int pageChanged = 0;
  int selectedIndex = 0;
  int selectedIndex1 = 0;
  final List<String> options = ['SHOPS', 'PRODUCTS'];
  final List<String> circles = [
    'ALL',
    'CAKES',
    'TRADITIONAL',
    'ICECREAM',
    'PANCAKES',
  ];

  final List<String> circleImages = [
    'assets/sweet6.jpg',
    'assets/sweet7.jpg',
    'assets/sweet8.jpg',
    'assets/sweet9.jpg',
    'assets/sweet10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //the code for shops and products is here,
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 3.0,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0,
                          color: index == selectedIndex
                              ? Color.fromARGB(0xff, 36, 35, 33)
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(150),
                        color: index == selectedIndex
                            ? Color.fromARGB(0xff, 36, 35, 33)
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
                      child: Center(
                        child: Padding(
                          padding: index == selectedIndex
                              ? const EdgeInsets.all(1.0)
                              : const EdgeInsets.all(0.0),
                          child: Text(
                            options[index],
                            style: TextStyle(
                                letterSpacing: 0.2,
                                fontSize: index == selectedIndex ? 20 : 20,
                                fontFamily: "Avenir",
                                color: index == selectedIndex
                                    ? Color.fromARGB(0xff, 242, 96, 39)
                                    : Colors.grey,
                                fontWeight: index == selectedIndex
                                    ? FontWeight.w600
                                    : FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ), //the code for the horizental circles is here
        selectedIndex == 1
            ? CirclesCategories(
                circleImages: circleImages,
                circles: circles,
                selectedIndex: selectedIndex,
                pageController: pageController,
              )
            : SizedBox(
                height: 0,
              ),
        Expanded(
          child: Container(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                  selectedIndex1 = pageChanged;
                });
              },
              pageSnapping: true,
              controller: pageController,
              children: [
                ShopsAll(),
                CakeShops(),
                TraditionalShops(),
                IcecreamShops(),
                PancakeShops(),
                ProductsAll(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
