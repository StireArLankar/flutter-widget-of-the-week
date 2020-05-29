import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final progressIndicatorRoute = RouteItem(
  (ctx) => ProgressIndicatorScreen(),
  ProgressIndicatorScreen.routeName,
  ProgressIndicatorScreen.title,
);

class ProgressIndicatorScreen extends StatelessWidget {
  static const String routeName = 'ProgressIndicator';
  static const String title = 'ProgressIndicator';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ProgressIndicatorScreen.title,
    );
  }
}
