import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final listWheelScrollViewRoute = RouteItem(
  (ctx) => ListWheelScrollViewScreen(),
  ListWheelScrollViewScreen.routeName,
  ListWheelScrollViewScreen.title,
);

class ListWheelScrollViewScreen extends StatelessWidget {
  static const String routeName = 'ListWheelScrollView';
  static const String title = 'ListWheelScrollView';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'first'],
      ListWheelScrollViewScreen.title,
    );
  }
}
