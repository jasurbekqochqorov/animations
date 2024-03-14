import 'package:flutter/material.dart';

class ExampleThird extends StatelessWidget {
  const ExampleThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qorbobo'),
      ),
      body: CustomPaint(
        painter: SnowmanPainter(),
        child: Container(),
      ),
    );
  }
}

class SnowmanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final Paint buttonPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 9;
    final Paint nosePaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;



    // Draw body with border
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.6), size.width / 4, fillPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.6), size.width / 4, borderPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.4), size.width / 6, fillPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.4), size.width / 6, borderPaint);

    // Draw eyes and buttons
    canvas.drawCircle(Offset(size.width / 2 - 15, size.height * 0.35), 5, borderPaint);
    canvas.drawCircle(Offset(size.width / 2 + 15, size.height * 0.35), 5, borderPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.55), 5, buttonPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.60), 5, buttonPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.65), 5, buttonPaint);

    // Draw nose
    final Path nosePath = Path();
    nosePath.moveTo(size.width / 2, size.height * 0.41);
    nosePath.lineTo(size.width / 2 +50, size.height * 0.41 - 15);
    nosePath.lineTo(size.width / 2, size.height * 0.41 - 30);
    nosePath.close();
    canvas.drawPath(nosePath, fillPaint);
    canvas.drawPath(nosePath, nosePaint);

    // Draw arms
    canvas.drawLine(Offset(size.width / 2 - size.width / 4, size.height * 0.6), Offset(size.width / 2 - size.width / 3, size.height * 0.5), borderPaint);
    canvas.drawLine(Offset(size.width / 2 + size.width / 4, size.height * 0.6), Offset(size.width / 2 + size.width / 3, size.height * 0.5), borderPaint);
    canvas.drawLine(Offset(330,440), Offset(357,420), borderPaint);
    canvas.drawLine(Offset(60,420), Offset(83,440), borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
