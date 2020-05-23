import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final pathClipperRoute = RouteItem(
  (ctx) => PathClipperScreen(),
  PathClipperScreen.routeName,
  PathClipperScreen.title,
);

class PathClipperScreen extends StatelessWidget {
  static const String routeName = 'PathClipper';
  static const String title = 'PathClipper';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      PathClipperScreen.title,
    );
  }
}
