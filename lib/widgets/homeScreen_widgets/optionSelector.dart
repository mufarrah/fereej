import 'package:Fereej_test3/widgets/homeScreen_widgets/BestRating.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/For_you.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/NerbyYou.dart';
import 'package:flutter/material.dart';

import '../../pages/Home pages/homeScreen.dart';

HomeScreen myHome = HomeScreen();

class OptionSelector extends StatefulWidget {
  @override
  _OptionSelectorState createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int selectedIndex = 0;
  final List<String> options = [
    'For you',
    'Nerby you',
    'Best rating',
  ];

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 25),
                  child: GestureDetector(
                    onTap: () {
                      pageController.animateToPage(index,
                          duration: Duration(milliseconds: 10),
                          curve: Curves.decelerate);
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
                              offset: Offset(0, 0),
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
                                fontSize: 20,
                                fontFamily: "Avenir",
                                color: index == selectedIndex
                                    ? Color.fromARGB(0xff, 242, 96, 39)
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
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
        Expanded(
          child: Container(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                  selectedIndex = pageChanged;
                });
              },
              pageSnapping: true,
              controller: pageController,
              children: [
                ForYouWidgetBuilder(),
                NerbyYouWidgetBuilder(),
                BestRatingWidgetBuilder(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
