import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestRatingWidgetBuilder extends StatefulWidget {
  @override
  _BestRatingWidgetBuilderState createState() =>
      _BestRatingWidgetBuilderState();
}

class _BestRatingWidgetBuilderState extends State<BestRatingWidgetBuilder> {
  final List<String> containerPicture = [
    'assets/pizza.jpg',
    'assets/macrons.png',
    'assets/salad.png'
  ];
  final List<String> headline = [
    'HOME MADE PIZZA',
    'TASTY MACRONS',
    'HOME MADE SALAD'
  ];
  final List<String> distance = [
    '15 Minutes Away',
    '20 Minutes Away',
    '30 Minutes Away'
  ];
  final List<String> price = ['BD 1.5', 'BD 2', 'BD 1.3'];
  final List<String> iconPicture = [
    'assets/hala.jpg',
    'assets/fb.png',
    'assets/tw.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: containerPicture.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Colors.black,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[100]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey[300]),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 4,
                                  top: 6,
                                  right: 0,
                                  bottom: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(
                                      containerPicture[index],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, top: 3),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Color.fromARGB(0xff, 242, 96, 39),
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  headline[index],
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(0xff, 64, 61, 57),
                                  ),
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.mapPin),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    distance[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Avenir",
                                        color:
                                            Color.fromARGB(0xff, 122, 122, 122),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Color.fromARGB(0xff, 64, 61, 57),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(0xff, 242, 96, 39),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(0xff, 242, 96, 39),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(0xff, 242, 96, 39),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(0xff, 242, 96, 39),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(0xff, 242, 96, 39),
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                          iconPicture[index],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
