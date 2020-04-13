import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final fractionallySizedBoxRoute = RouteItem(
  (ctx) => FractionallySizedBoxScreen(),
  FractionallySizedBoxScreen.routeName,
  FractionallySizedBoxScreen.title,
);

class FractionallySizedBoxScreen extends StatelessWidget {
  static const String routeName = 'FractionallySizedBox';
  static const String title = 'FractionallySizedBox';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      FractionallySizedBoxScreen.title,
    );
  }
}
