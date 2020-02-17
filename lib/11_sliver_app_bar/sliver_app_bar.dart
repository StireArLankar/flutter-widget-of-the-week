import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final sliverAppBarRoute = RouteItem(
  (ctx) => SliverAppBarScreen(),
  SliverAppBarScreen.routeName,
  SliverAppBarScreen.title,
);

class SliverAppBarScreen extends StatelessWidget {
  static const String routeName = 'sliver-app-bar';
  static const String title = 'SliverAppBar';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      SliverAppBarScreen.title,
    );
  }
}
