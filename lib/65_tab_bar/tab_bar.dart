import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final tabBarRoute = RouteItem(
  (ctx) => TabBarScreen(),
  TabBarScreen.routeName,
  TabBarScreen.title,
);

class TabBarScreen extends StatelessWidget {
  static const String routeName = 'TabBar';
  static const String title = 'TabBar';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      TabBarScreen.title,
    );
  }
}
