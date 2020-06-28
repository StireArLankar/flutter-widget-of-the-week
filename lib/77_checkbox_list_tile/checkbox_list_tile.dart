import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final checkboxListTileScreenRoute = RouteItem(
  (ctx) => CheckboxListTileScreen(),
  CheckboxListTileScreen.routeName,
  CheckboxListTileScreen.title,
);

class CheckboxListTileScreen extends StatelessWidget {
  static const String routeName = 'CheckboxListTile';
  static const String title = 'CheckboxListTile';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      CheckboxListTileScreen.title,
    );
  }
}
