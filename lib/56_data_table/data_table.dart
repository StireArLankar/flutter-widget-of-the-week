import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final dataTableRoute = RouteItem(
  (ctx) => DataTableScreen(),
  DataTableScreen.routeName,
  DataTableScreen.title,
);

class DataTableScreen extends StatelessWidget {
  static const String routeName = 'DataTable';
  static const String title = 'DataTable';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      DataTableScreen.title,
    );
  }
}
