import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final selectableTextRoute = RouteItem(
  (ctx) => SelectableTextScreen(),
  SelectableTextScreen.routeName,
  SelectableTextScreen.title,
);

class SelectableTextScreen extends StatelessWidget {
  static const String routeName = 'SelectableText';
  static const String title = 'SelectableText';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      SelectableTextScreen.title,
    );
  }
}
