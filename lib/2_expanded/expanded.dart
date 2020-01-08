import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/tabs.dart';

import './first_tab.dart';
import './second_tab.dart';

class ExpandedScreen extends StatelessWidget {
  static String routeName = 'expanded';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['In row', 'In column'],
      'Expanded',
    );
  }
}

class ExpandedBox extends StatelessWidget {
  final Color color;

  ExpandedBox({this.color = const Color.fromRGBO(200, 105, 50, 0.8)});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.1),
            offset: const Offset(2, 2),
          ),
        ],
        border: Border.all(
          color: Colors.blue,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      height: 100,
      width: 100,
      margin: const EdgeInsets.all(5),
    );
  }
}
