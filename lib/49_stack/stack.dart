import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final stackRoute = RouteItem(
  (ctx) => StackScreen(),
  StackScreen.routeName,
  StackScreen.title,
);

class StackScreen extends StatelessWidget {
  static const String routeName = 'Stack';
  static const String title = 'Stack';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      StackScreen.title,
    );
  }
}
