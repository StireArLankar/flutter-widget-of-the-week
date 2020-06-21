import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final paddingRoute = RouteItem(
  (ctx) => PaddingScreen(),
  PaddingScreen.routeName,
  PaddingScreen.title,
);

class PaddingScreen extends StatelessWidget {
  static const String routeName = 'Padding';
  static const String title = 'Padding';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      PaddingScreen.title,
    );
  }
}
