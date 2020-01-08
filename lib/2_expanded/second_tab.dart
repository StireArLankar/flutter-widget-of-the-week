import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ExpandedBox(),
              ExpandedBox(),
              ExpandedBox(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(child: ExpandedBox(color: Colors.red)),
              ExpandedBox(),
              ExpandedBox(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(child: ExpandedBox(color: Colors.red)),
              ExpandedBox(),
              Expanded(child: ExpandedBox(color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}
