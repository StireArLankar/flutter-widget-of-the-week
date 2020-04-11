import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final constrainedBoxRoute = RouteItem(
  (ctx) => ConstrainedBoxScreen(),
  ConstrainedBoxScreen.routeName,
  ConstrainedBoxScreen.title,
);

class ConstrainedBoxScreen extends StatelessWidget {
  static const String routeName = 'ConstrainedBox';
  static const String title = 'ConstrainedBox';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ConstrainedBoxScreen.title,
    );
  }
}
