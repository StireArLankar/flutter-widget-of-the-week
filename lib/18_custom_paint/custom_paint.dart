import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final customPaintRoute = RouteItem(
  (ctx) => CustomPaintScreen(),
  CustomPaintScreen.routeName,
  CustomPaintScreen.title,
);

class CustomPaintScreen extends StatelessWidget {
  static const String routeName = 'custom-paint';
  static const String title = 'Custom Paint';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      CustomPaintScreen.title,
    );
  }
}
