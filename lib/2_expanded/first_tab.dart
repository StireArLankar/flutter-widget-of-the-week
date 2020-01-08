import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ExpandedBox(),
                ExpandedBox(),
                ExpandedBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: ExpandedBox(color: Colors.red)),
                ExpandedBox(),
                ExpandedBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: ExpandedBox(color: Colors.red)),
                ExpandedBox(),
                Expanded(child: ExpandedBox(color: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
