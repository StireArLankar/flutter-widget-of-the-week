import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final cupertinoActionSheetRoute = RouteItem(
  (ctx) => CupertinoActionSheetScreen(),
  CupertinoActionSheetScreen.routeName,
  CupertinoActionSheetScreen.title,
);

class CupertinoActionSheetScreen extends StatelessWidget {
  static const String routeName = 'CupertinoActionSheet';
  static const String title = 'CupertinoActionSheet';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      CupertinoActionSheetScreen.title,
    );
  }
}
