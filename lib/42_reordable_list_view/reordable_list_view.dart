import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final reordableListViewRoute = RouteItem(
  (ctx) => ReordableListViewScreen(),
  ReordableListViewScreen.routeName,
  ReordableListViewScreen.title,
);

class ReordableListViewScreen extends StatelessWidget {
  static const String routeName = 'ReordableListView';
  static const String title = 'ReordableListView';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'first'],
      ReordableListViewScreen.title,
    );
  }
}
