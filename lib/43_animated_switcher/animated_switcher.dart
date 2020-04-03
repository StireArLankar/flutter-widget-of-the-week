import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final animatedSwitcherRoute = RouteItem(
  (ctx) => AnimatedSwitcherScreen(),
  AnimatedSwitcherScreen.routeName,
  AnimatedSwitcherScreen.title,
);

class AnimatedSwitcherScreen extends StatelessWidget {
  static const String routeName = 'AnimatedSwitcher';
  static const String title = 'AnimatedSwitcher';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      AnimatedSwitcherScreen.title,
    );
  }
}
