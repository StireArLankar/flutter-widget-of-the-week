import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final animatedCrossfadeRoute = RouteItem(
  (ctx) => AnimatedCrossfadeScreen(),
  AnimatedCrossfadeScreen.routeName,
  AnimatedCrossfadeScreen.title,
);

class AnimatedCrossfadeScreen extends StatelessWidget {
  static const String routeName = 'AnimatedCrossfade';
  static const String title = 'AnimatedCrossfade';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      AnimatedCrossfadeScreen.title,
    );
  }
}
