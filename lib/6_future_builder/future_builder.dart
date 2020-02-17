import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final futureBuilderRoute = RouteItem(
  (ctx) => FutureBuilderScreen(),
  FutureBuilderScreen.routeName,
  FutureBuilderScreen.title,
);

class FutureBuilderScreen extends StatelessWidget {
  static const String routeName = 'future-builder';
  static const String title = 'FutureBuilder';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['Static', 'Animated'],
      FutureBuilderScreen.title,
    );
  }
}
