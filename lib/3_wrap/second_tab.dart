import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/3_wrap/wrap.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Wrap(
              direction: Axis.vertical,
              children: List.generate(20, (i) {
                return Box();
              }),
            ),
            Wrap(
              direction: Axis.vertical,
              spacing: 10,
              children: List.generate(18, (i) {
                return Box();
              }),
            ),
            Wrap(
              direction: Axis.vertical,
              runSpacing: 10,
              children: List.generate(18, (i) {
                return Box();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
