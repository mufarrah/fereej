import 'dart:ui';

import 'package:flutter/material.dart';

import 'Location_entry.dart';

class LocationFinder extends StatefulWidget {
  @override
  _LocationFinderState createState() => _LocationFinderState();
}

class _LocationFinderState extends State<LocationFinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/location Image .png',
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.2)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationEntry(),
                          ));
                    });
                  },
                  child: Text(
                    'LOCATION',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Avenir Next',
                      color: const Color(0xff000000),
                      letterSpacing: 0.6176470470428467,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/location.png',
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
