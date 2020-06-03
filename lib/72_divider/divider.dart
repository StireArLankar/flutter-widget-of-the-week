import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final dividerRoute = RouteItem(
  (ctx) => DividerScreen(),
  DividerScreen.routeName,
  DividerScreen.title,
);

class DividerScreen extends StatelessWidget {
  static const String routeName = 'Divider';
  static const String title = 'Divider';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      DividerScreen.title,
    );
  }
}
