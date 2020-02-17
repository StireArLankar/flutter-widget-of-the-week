import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final expandedRoute = RouteItem(
  (ctx) => ExpandedScreen(),
  ExpandedScreen.routeName,
  ExpandedScreen.title,
);

class ExpandedScreen extends StatelessWidget {
  static const String routeName = 'expanded';
  static const String title = 'Expanded';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['In row', 'In column'],
      ExpandedScreen.title,
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
