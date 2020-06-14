import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final clipOvalRoute = RouteItem(
  (ctx) => ClipOvalScreen(),
  ClipOvalScreen.routeName,
  ClipOvalScreen.title,
);

class ClipOvalScreen extends StatelessWidget {
  static const String routeName = 'ClipOval';
  static const String title = 'ClipOval';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ClipOvalScreen.title,
    );
  }
}
