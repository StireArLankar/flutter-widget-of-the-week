import 'package:flutter/material.dart';

import 'transformed_animated_box.dart';

class ThridTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TransformedAnimatedBox(0, 10),
            TransformedAnimatedBox(5, 15),
          ],
        ),
      ),
    );
  }
}
