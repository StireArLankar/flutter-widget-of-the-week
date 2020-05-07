import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final tweenAnimationBuilderRoute = RouteItem(
  (ctx) => TweenAnimationBuilderScreen(),
  TweenAnimationBuilderScreen.routeName,
  TweenAnimationBuilderScreen.title,
);

class TweenAnimationBuilderScreen extends StatelessWidget {
  static const String routeName = 'TweenAnimationBuilder';
  static const String title = 'TweenAnimationBuilder';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      TweenAnimationBuilderScreen.title,
    );
  }
}
