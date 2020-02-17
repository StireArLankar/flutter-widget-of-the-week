import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final wrapRoute = RouteItem(
  (ctx) => WrapScreen(),
  WrapScreen.routeName,
  WrapScreen.title,
);

class WrapScreen extends StatelessWidget {
  static const String routeName = 'wrap';
  static const String title = 'Wrap';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['Horizontal', 'Vertical'],
      WrapScreen.title,
    );
  }
}

class Box extends StatelessWidget {
  final Color color;

  Box({this.color = const Color.fromRGBO(200, 105, 50, 0.8)});

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
      height: 50,
      width: 50,
    );
  }
}
