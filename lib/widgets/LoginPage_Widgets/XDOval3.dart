import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XDOval3 extends StatelessWidget {
  XDOval3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(15.w, 15.h, 98.w, 98.h),
          size: Size(128.w, 128.h),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Transform.rotate(
            angle: -0.4014,
            child:
                // Adobe XD layer: 'Oval' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.w, 9999.h)),
                gradient: LinearGradient(
                  begin: Alignment(-0.w, 0.h),
                  end: Alignment(3.w, -0.h),
                  colors: [const Color(0xa9c6d4dc), const Color(0xa9f8fdff)],
                  stops: [0.w, 1.h],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
