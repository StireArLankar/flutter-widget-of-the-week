import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final toggleButtonsRoute = RouteItem(
  (ctx) => ToggleButtonsScreen(),
  ToggleButtonsScreen.routeName,
  ToggleButtonsScreen.title,
);

class ToggleButtonsScreen extends StatelessWidget {
  static const String routeName = 'ToggleButtons';
  static const String title = 'ToggleButtons';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ToggleButtonsScreen.title,
    );
  }
}
