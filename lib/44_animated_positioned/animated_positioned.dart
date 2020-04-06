import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final animatedPositionedRoute = RouteItem(
  (ctx) => AnimatedPositionedScreen(),
  AnimatedPositionedScreen.routeName,
  AnimatedPositionedScreen.title,
);

class AnimatedPositionedScreen extends StatelessWidget {
  static const String routeName = 'AnimatedPositioned';
  static const String title = 'AnimatedPositioned';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      AnimatedPositionedScreen.title,
    );
  }
}
