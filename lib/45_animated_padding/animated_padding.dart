import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final animatedPaddingRoute = RouteItem(
  (ctx) => AnimatedPaddingScreen(),
  AnimatedPaddingScreen.routeName,
  AnimatedPaddingScreen.title,
);

class AnimatedPaddingScreen extends StatelessWidget {
  static const String routeName = 'AnimatedPadding';
  static const String title = 'AnimatedPadding';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      AnimatedPaddingScreen.title,
    );
  }
}
