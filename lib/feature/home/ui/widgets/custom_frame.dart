import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.0014286);
    path_0.lineTo(0,size.height*0.7142857);
    path_0.lineTo(size.width*0.1666667,size.height*0.7142857);
    path_0.lineTo(size.width*0.1659000,size.height*0.9985714);
    path_0.lineTo(size.width,size.height*1.0014286);
    path_0.lineTo(size.width,size.height*0.2871429);
    path_0.lineTo(size.width*0.8333333,size.height*0.2885714);
    path_0.lineTo(size.width*0.8333333,size.height*0.0014286);
    path_0.lineTo(0,size.height*0.0014286);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
