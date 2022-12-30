import 'package:flutter/material.dart';

class LoginClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(20.0, -size.height / 3);
    path.quadraticBezierTo(
        size.width / 20, size.height, size.width / 1, size.height);
    path.quadraticBezierTo(
        size.width / 20, size.height, size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
