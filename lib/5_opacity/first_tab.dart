import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  Widget buildBox(double opacity) {
    return Opacity(
      opacity: opacity,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: List.generate(12, (i) {
            return buildBox((i + 1) / 12);
          }),
        ),
      ),
    );
  }
}
