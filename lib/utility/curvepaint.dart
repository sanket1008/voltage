import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color =const Color(0xff15B78C);
    paint.style = PaintingStyle.fill; // Change this to fill

    var paint2=Paint()
    ..color=const Color(0xff108768)
    ..style=PaintingStyle.fill;

    canvas.drawCircle(const Offset(50, 100), 170, paint);
    canvas.drawCircle(const Offset(250, 130), 170, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}