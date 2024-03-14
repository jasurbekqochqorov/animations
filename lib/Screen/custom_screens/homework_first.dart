import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework12/utils/size/size_utils.dart';

class ExampleFirst extends StatefulWidget {
  const ExampleFirst({Key? key}) : super(key: key);

  @override
  State<ExampleFirst> createState() => _ExampleFirstState();
}

class _ExampleFirstState extends State<ExampleFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Bayroq"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: CustomPaint(
            size: const Size(350, 250),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // print(size.width);
    // print(size.height);
    var paint = Paint()..color = Colors.blue;
    var paint3 = Paint()..color = Colors.green;
    var paint2 = Paint()..color = Colors.white;
    var paint6 = Paint()..color = Colors.white..strokeWidth=7..style=PaintingStyle.stroke;
    var paint7 = Paint()..color = Colors.blue..strokeWidth=7..style=PaintingStyle.stroke;
      final Paint starPaint = Paint()..color = Colors.white;
    var paint4 = Paint()..color = Colors.red..strokeWidth=size.height*0.02;
    canvas.drawRect(const Offset(0,0) & Size(size.width,size.height*0.32),paint);
    canvas.drawRect(Offset(0,size.height*0.34) & Size(size.width,size.height*0.32),paint2);
    canvas.drawRect(Offset(0,size.height-size.height*0.32) & Size(size.width,size.height*0.32),paint3);
    canvas.drawLine(Offset(size.width,size.height*0.33),Offset(0,size.height*0.33),paint4);
    canvas.drawLine(Offset(size.width,size.height-size.height*0.33),Offset(0,size.height-size.height*0.33),paint4);
    canvas.drawArc(
        Offset(size.width / 15 + 10, (size.height / 3 -45) / 2) & const Size(45, 40),
        1.6,
        180 * (pi / 180),false,paint6);
    canvas.drawArc(
        Offset(size.width / 15 + 17, (size.height / 3 - 45) / 2) & const Size(45, 40),
        1.6,
        360 * (pi / 180),
        false,
        paint7);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = size.width * 0.02;
    drawStarsAndCrescent(canvas, size, starPaint);
  }
  //Exercise: Aylanani kvadratga har tomondan urintining
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  void drawStar(Canvas canvas, Offset center, double size, Paint paint) {
    final Path path = Path();
    for (int i = 0; i < 5; i++) {
      double angle = -pi / 2 + (2 * pi / 5) * i;
      double x = center.dx + size * cos(angle);
      double y = center.dy + size * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
      angle += pi / 5;
      x = center.dx + size * cos(angle) / 2;
      y = center.dy + size * sin(angle) / 2;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint);
  }
  void drawStarsAndCrescent(Canvas canvas, Size size, Paint paint) {
    const double starSpacing = 15;
    const double starSize = 5;
    const double crescentRadius = 25;
    const Offset crescentCenter = Offset(38,22);


    // Yulduzlar chizish
    for (int i = 1; i < 4; i++) {
      for(int j=0; j<3; j++) {
        double x = crescentCenter.dx + crescentRadius * 3 + starSpacing * (j % 3);
        double y = crescentCenter.dy + starSpacing * (j ~/ 3);
        drawStar(canvas, Offset(x, y), starSize, paint);
      }
      for(int j=0; j<4; j++) {
        double x = crescentCenter.dx + crescentRadius * 2.4 + starSpacing * (j % 4);
        double y = crescentCenter.dy + starSpacing * (j ~/ 4)+20;
        drawStar(canvas, Offset(x, y), starSize, paint);
      }
      for(int j=0; j<5; j++) {
        double x = crescentCenter.dx + crescentRadius * 1.8 + starSpacing * (j % 5);
        double y = crescentCenter.dy + starSpacing * (j ~/ 5)+40;
        drawStar(canvas, Offset(x, y), starSize, paint);
      }
    }
  }
}
