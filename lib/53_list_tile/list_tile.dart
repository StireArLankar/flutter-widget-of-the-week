import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final listTileRoute = RouteItem(
  (ctx) => ListTileScreen(),
  ListTileScreen.routeName,
  ListTileScreen.title,
);

class ListTileScreen extends StatelessWidget {
  static const String routeName = 'ListTile';
  static const String title = 'ListTile';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ListTileScreen.title,
    );
  }
}
