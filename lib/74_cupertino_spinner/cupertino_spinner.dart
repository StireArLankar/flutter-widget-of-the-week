import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final cupertinoSpinnerRoute = RouteItem(
  (ctx) => CupertinoSpinnerScreen(),
  CupertinoSpinnerScreen.routeName,
  CupertinoSpinnerScreen.title,
);

class CupertinoSpinnerScreen extends StatelessWidget {
  static const String routeName = 'CupertinoSpinner';
  static const String title = 'CupertinoSpinner';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      CupertinoSpinnerScreen.title,
    );
  }
}
