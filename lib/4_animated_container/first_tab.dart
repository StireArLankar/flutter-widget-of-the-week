import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/4_animated_container/colored_animated_box.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ColoredAnimatedBox(Colors.cyan, Colors.red),
            ColoredAnimatedBox(Colors.blue, Colors.lime),
          ],
        ),
      ),
    );
  }
}
