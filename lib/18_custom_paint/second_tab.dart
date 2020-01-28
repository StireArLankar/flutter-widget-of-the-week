import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> with TickerProviderStateMixin {
  double percentage = 0.0;
  double newPercentage = 0.0;
  AnimationController percentageAnimationController;
  @override
  void initState() {
    super.initState();
    percentageAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() {
        setState(() {
          percentage = lerpDouble(
            percentage,
            newPercentage,
            percentageAnimationController.value,
          );
        });
      });
  }

  @override
  void dispose() {
    percentageAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        width: 200.0,
        child: CustomPaint(
          foregroundPainter: MyPainter(
            lineColor: Colors.amber,
            completeColor: Colors.blueAccent,
            completePercent: percentage,
            width: 8.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.purple,
              splashColor: Colors.blueAccent,
              shape: CircleBorder(),
              child: Text("Click"),
              onPressed: () {
                setState(() {
                  newPercentage += 10;

                  if (newPercentage > 100.0) {
                    percentage = 0.0;
                    newPercentage = 0.0;
                  }

                  percentageAnimationController.forward(from: 0.0);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;

  MyPainter({
    this.lineColor,
    this.completeColor,
    this.completePercent,
    this.width,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, line);
    double arcAngle = 2 * pi * (completePercent / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, complete);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
