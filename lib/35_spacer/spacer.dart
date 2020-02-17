import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final spacerRoute = RouteItem(
  (ctx) => SpacerScreen(),
  SpacerScreen.routeName,
  SpacerScreen.title,
);

class SpacerScreen extends StatelessWidget {
  static const String routeName = 'Spacer';
  static const String title = 'Spacer';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      SpacerScreen.title,
    );
  }
}
