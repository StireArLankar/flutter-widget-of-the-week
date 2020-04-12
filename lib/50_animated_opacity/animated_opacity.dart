import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final animatedOpacityRoute = RouteItem(
  (ctx) => AnimatedOpacityScreen(),
  AnimatedOpacityScreen.routeName,
  AnimatedOpacityScreen.title,
);

class AnimatedOpacityScreen extends StatelessWidget {
  static const String routeName = 'AnimatedOpacity';
  static const String title = 'AnimatedOpacity';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      AnimatedOpacityScreen.title,
    );
  }
}
