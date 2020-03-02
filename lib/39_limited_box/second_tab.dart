import 'package:flutter/material.dart';
import 'dart:math';

class SecondTab extends StatelessWidget {
  final List colors = [Colors.red, Colors.green, Colors.yellow];
  final Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: randomColorV2(),
              ),
            )
        ],
      ),
    );
  }

  Color randomColor() {
    return colors[random.nextInt(3)];
  }

  Color randomColorV2() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }
}
