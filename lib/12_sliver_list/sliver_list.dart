import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'fifth_tab.dart';
import 'first_tab.dart';
import 'fourth_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

final sliverListRoute = RouteItem(
  (ctx) => SliverListScreen(),
  SliverListScreen.routeName,
  SliverListScreen.title,
);

class SliverListScreen extends StatelessWidget {
  static const String routeName = 'sliver-list';
  static const String title = 'Sliver List';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab(), FourthTab(), FifthTab()],
      ['Slivers', 'Controller', 'Maths', 'Sizes', 'Custom'],
      SliverListScreen.title,
    );
  }
}
