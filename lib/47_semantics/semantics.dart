import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final semanticsRoute = RouteItem(
  (ctx) => SemanticsScreen(),
  SemanticsScreen.routeName,
  SemanticsScreen.title,
);

class SemanticsScreen extends StatelessWidget {
  static const String routeName = 'Semantics';
  static const String title = 'Semantics';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      SemanticsScreen.title,
    );
  }
}
