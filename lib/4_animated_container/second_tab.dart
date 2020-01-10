import 'package:flutter/material.dart';

import 'bordered_animated_box.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BorderedAnimatedBox(0, 20),
            BorderedAnimatedBox(20, 50),
          ],
        ),
      ),
    );
  }
}
