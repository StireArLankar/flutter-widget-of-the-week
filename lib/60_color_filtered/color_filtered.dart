import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final colorFilteredRoute = RouteItem(
  (ctx) => ColorFilteredScreen(),
  ColorFilteredScreen.routeName,
  ColorFilteredScreen.title,
);

class ColorFilteredScreen extends StatelessWidget {
  static const String routeName = 'ColorFiltered';
  static const String title = 'ColorFiltered';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ColorFilteredScreen.title,
    );
  }
}
