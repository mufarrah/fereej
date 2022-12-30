import 'package:flutter/material.dart';

import 'pages/Login pages/XDLogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fereej App',
      theme: ThemeData(
        primaryColor: Color.fromARGB(0xff, 255, 240, 216),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      home: XDLogin(),
    );
  }
}
