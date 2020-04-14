import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final listViewRoute = RouteItem(
  (ctx) => ListViewScreen(),
  ListViewScreen.routeName,
  ListViewScreen.title,
);

class ListViewScreen extends StatelessWidget {
  static const String routeName = 'ListView';
  static const String title = 'ListView';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ListViewScreen.title,
    );
  }
}
