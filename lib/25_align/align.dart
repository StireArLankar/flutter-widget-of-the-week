import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final alignRoute = RouteItem(
  (ctx) => AlignScreen(),
  AlignScreen.routeName,
  AlignScreen.title,
);

class AlignScreen extends StatelessWidget {
  static const String routeName = 'Align';
  static const String title = 'Align';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      AlignScreen.title,
    );
  }
}
