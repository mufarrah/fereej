import 'package:flutter/material.dart';

class LoginClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.25,
        size.width * 0.51, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.58, size.height * 0.8, size.width * 0.1, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
