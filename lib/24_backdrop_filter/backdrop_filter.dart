import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final backdropFilterRoute = RouteItem(
  (ctx) => BackdropFilterScreen(),
  BackdropFilterScreen.routeName,
  BackdropFilterScreen.title,
);

class BackdropFilterScreen extends StatelessWidget {
  static const String routeName = 'backdrop-filter';
  static const String title = 'Backdrop Filter';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      BackdropFilterScreen.title,
    );
  }
}
