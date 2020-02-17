import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';

final tableRoute = RouteItem(
  (ctx) => TableScreen(),
  TableScreen.routeName,
  TableScreen.title,
);

class TableScreen extends StatelessWidget {
  static const String routeName = 'table';
  static const String title = 'Table';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'second'],
      TableScreen.title,
    );
  }
}
