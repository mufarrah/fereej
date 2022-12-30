import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XDSkiptext extends StatelessWidget {
  XDSkiptext({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.w, 0.h, 36.w, 24.h),
          size: Size(36.w, 24.h),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Bebas Neue',
              fontSize: 20,
              color: const Color(0xff000000),
              letterSpacing: 1.2000000000000002,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
