import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCircules extends StatefulWidget {
  @override
  _GenderCirculesState createState() => _GenderCirculesState();
}

class _GenderCirculesState extends State<GenderCircules> {
  int selectedIndex;
  List<Icon> gender = [
    Icon(FontAwesomeIcons.person),
    Icon(FontAwesomeIcons.personDress)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: gender.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 70.0,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: index == selectedIndex
                            ? Color.fromARGB(0xff, 36, 35, 33)
                            : Colors.white,
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
                      gender[index].icon,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
