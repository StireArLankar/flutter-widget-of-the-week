import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'neptunia/neptunia_tab.dart';
import 'second_tab.dart';

final pageViewRoute = RouteItem(
  (ctx) => PageViewScreen(),
  PageViewScreen.routeName,
  PageViewScreen.title,
);

class PageViewScreen extends StatelessWidget {
  static const String routeName = 'page-view';
  static const String title = 'Page View';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), NeptuniaTab()],
      ['first', 'second', 'nepu'],
      PageViewScreen.title,
    );
  }
}
