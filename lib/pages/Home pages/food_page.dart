import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FOOD',
          style: TextStyle(
            fontFamily: 'Avenir Next',
            fontSize: 30,
            color: const Color(0xff000000),
            letterSpacing: 0.6176470470428467,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
