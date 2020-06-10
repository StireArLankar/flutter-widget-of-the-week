import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final ignorePointerRoute = RouteItem(
  (ctx) => IgnorePointerScreen(),
  IgnorePointerScreen.routeName,
  IgnorePointerScreen.title,
);

class IgnorePointerScreen extends StatelessWidget {
  static const String routeName = 'IgnorePointer';
  static const String title = 'IgnorePointer';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      IgnorePointerScreen.title,
    );
  }
}
