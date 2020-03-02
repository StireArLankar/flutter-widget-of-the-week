import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final limitedBoxRoute = RouteItem(
  (ctx) => LimitedBoxScreen(),
  LimitedBoxScreen.routeName,
  LimitedBoxScreen.title,
);

class LimitedBoxScreen extends StatelessWidget {
  static const String routeName = 'LimitedBox';
  static const String title = 'LimitedBox';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      LimitedBoxScreen.title,
    );
  }
}
