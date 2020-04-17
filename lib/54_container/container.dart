import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final containerRoute = RouteItem(
  (ctx) => ContainerScreen(),
  ContainerScreen.routeName,
  ContainerScreen.title,
);

class ContainerScreen extends StatelessWidget {
  static const String routeName = 'Container';
  static const String title = 'Container';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      ContainerScreen.title,
    );
  }
}
