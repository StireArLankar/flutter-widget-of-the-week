import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final snappingListViewScreenRoute = RouteItem(
  (ctx) => SnappingListViewScreen(),
  SnappingListViewScreen.routeName,
  SnappingListViewScreen.title,
);

class SnappingListViewScreen extends StatelessWidget {
  static const String routeName = 'SnappingListView';
  static const String title = 'SnappingListView';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      SnappingListViewScreen.title,
    );
  }
}
