import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final opacityRoute = RouteItem(
  (ctx) => OpacityScreen(),
  OpacityScreen.routeName,
  OpacityScreen.title,
);

class OpacityScreen extends StatelessWidget {
  static const String routeName = 'opacity';
  static const String title = 'Opacity';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['Static', 'Animated'],
      OpacityScreen.title,
    );
  }
}
