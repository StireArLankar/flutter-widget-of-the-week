import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final snackbarRoute = RouteItem(
  (ctx) => SnackbarScreen(),
  SnackbarScreen.routeName,
  SnackbarScreen.title,
);

class SnackbarScreen extends StatelessWidget {
  static const String routeName = 'Snackbar';
  static const String title = 'Snackbar';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      SnackbarScreen.title,
    );
  }
}
