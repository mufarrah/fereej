import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class XDOval2 extends StatelessWidget {
  XDOval2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(45.w, 0.h, 289.w, 260.h),
          size: Size(378.w, 378.h),
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
                  begin: Alignment(-0.91, 0.83),
                  end: Alignment(-0.73, -0.91),
                  colors: [const Color(0xa9c6d4dc), const Color(0xa9f8fdff)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
