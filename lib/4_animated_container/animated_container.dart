import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

final animatedContainerRoute = RouteItem(
  (ctx) => AnimatedContainerScreen(),
  AnimatedContainerScreen.routeName,
  AnimatedContainerScreen.title,
);

class AnimatedContainerScreen extends StatelessWidget {
  static const String routeName = 'animated-container';
  static const String title = 'Animated Container';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThridTab()],
      ['Colors', 'Sizes', 'Transform'],
      AnimatedContainerScreen.title,
    );
  }
}
