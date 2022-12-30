import 'package:flutter/material.dart';

class CirclesCategories extends StatefulWidget {
  final List<String> circles;
  final List<String> circleImages;
  final int selectedIndex;
  final PageController pageController;

  const CirclesCategories(
      {Key key,
      this.circles,
      this.pageController,
      this.selectedIndex,
      this.circleImages})
      : super(key: key);
  @override
  _CirclesCategoriesState createState() => _CirclesCategoriesState();
}

class _CirclesCategoriesState extends State<CirclesCategories> {
  int selectedIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.circles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GestureDetector(
              onTap: () {
                widget.pageController.animateToPage(
                    widget.selectedIndex == 0 && selectedIndex1 == 0
                        ? 0
                        : widget.selectedIndex == 0 && selectedIndex1 == 1
                            ? 1
                            : widget.selectedIndex == 0 && selectedIndex1 == 2
                                ? 2
                                : widget.selectedIndex == 0 &&
                                        selectedIndex1 == 3
                                    ? 3
                                    : widget.selectedIndex == 0 &&
                                            selectedIndex1 == 4
                                        ? 4
                                        : widget.selectedIndex == 1 &&
                                                selectedIndex1 == 0
                                            ? 5
                                            : 0,
                    duration: Duration(milliseconds: 1),
                    curve: Curves.decelerate);
                setState(() {
                  selectedIndex1 = index;
                });
              },
              child: Column(
                children: [
                  Container(
                    height: 70.0,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: index == selectedIndex1
                            ? Color.fromARGB(0xff, 36, 35, 33)
                            : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                            offset: index == selectedIndex1
                                ? Offset(0, 0)
                                : Offset(0, 0),
                            blurRadius: index == selectedIndex1 ? 8 : 0,
                            color: index == selectedIndex1
                                ? Colors.grey
                                : Colors.white),
                      ],
                    ),
                    child: Container(
                      height: 50.0,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(widget.circleImages[index])),
                        border: Border.all(
                          width: 0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(150),
                        color: index == widget.selectedIndex
                            ? Color.fromARGB(0xff, 36, 35, 33)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: index == selectedIndex1
                                  ? Offset(0, 0)
                                  : Offset(0, 0),
                              blurRadius: index == selectedIndex1 ? 8 : 0,
                              color: index == widget.selectedIndex
                                  ? Colors.grey
                                  : Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.circles[index],
                      style: TextStyle(
                          fontSize: index == selectedIndex1 ? 17 : 15,
                          fontFamily: "Avenir",
                          color: index == selectedIndex1
                              ? Color.fromARGB(0xff, 242, 96, 39)
                              : Colors.grey,
                          fontWeight: index == selectedIndex1
                              ? FontWeight.w600
                              : FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
