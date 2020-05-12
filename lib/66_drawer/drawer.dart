import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final drawerRoute = RouteItem(
  (ctx) => DrawerScreen(),
  DrawerScreen.routeName,
  DrawerScreen.title,
);

class DrawerScreen extends StatelessWidget {
  static const String routeName = 'Drawer';
  static const String title = 'Drawer';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      DrawerScreen.title,
    );
  }
}
