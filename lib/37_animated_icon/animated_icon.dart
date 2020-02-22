import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final animatedIconRoute = RouteItem(
  (ctx) => AnimatedIconScreen(),
  AnimatedIconScreen.routeName,
  AnimatedIconScreen.title,
);

class AnimatedIconScreen extends StatelessWidget {
  static const String routeName = 'AnimatedIcon';
  static const String title = 'AnimatedIcon';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'second'],
      AnimatedIconScreen.title,
    );
  }
}
