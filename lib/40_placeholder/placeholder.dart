import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final placeholderRoute = RouteItem(
  (ctx) => PlaceholderScreen(),
  PlaceholderScreen.routeName,
  PlaceholderScreen.title,
);

class PlaceholderScreen extends StatelessWidget {
  static const String routeName = 'Placeholder';
  static const String title = 'Placeholder';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      PlaceholderScreen.title,
    );
  }
}
