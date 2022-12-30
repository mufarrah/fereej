import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XDOval1 extends StatelessWidget {
  XDOval1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(50.w, 40.2.h, 194.w, 194.h),
          size: Size(254.4.w, 254.4.h),
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
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(-1.05.w, 1.25.h),
                  end: Alignment(0.64.w, -0.42.h),
                  colors: [const Color(0xa9c6d4dc), const Color(0xa9f8fdff)],
                  stops: [0.0.w, 1.0.h],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
