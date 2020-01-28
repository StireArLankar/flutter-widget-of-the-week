import 'package:flutter/material.dart';
import 'dart:math' as Math;

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: ShapesPainter(),
        child: Container(
          height: 700,
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // set the paint color to be white
    paint.color = Colors.white;

    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);

    paint.color = Colors.blueAccent;

    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();

    canvas.drawPath(path, paint);

    // set the color property of the paint
    paint.color = Colors.deepOrange;

    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);

    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);

    paint.color = Colors.red;
    paint.strokeWidth = 5;

    canvas.drawCircle(Offset(75, 75), 50, paint);
    canvas.drawLine(Offset(300, 300), Offset(300, 20), paint);
    canvas.drawRect(Rect.fromPoints(Offset(200, 200), Offset(250, 150)), paint);

// smiley
    final center1 = Offset(150, 400);
    final radius = 100.0;
    paint.color = Colors.yellowAccent;
    canvas.drawCircle(center1, radius, paint);

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center1, radius: radius / 2),
      0,
      Math.pi,
      false,
      smilePaint,
    );

    canvas.drawCircle(
      Offset(center1.dx - radius / 2, center1.dy - radius / 2),
      10,
      Paint(),
    );
    canvas.drawCircle(
      Offset(center1.dx + radius / 2, center1.dy - radius / 2),
      10,
      Paint(),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
