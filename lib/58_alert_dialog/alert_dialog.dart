import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final alertDialogRoute = RouteItem(
  (ctx) => AlertDialogScreen(),
  AlertDialogScreen.routeName,
  AlertDialogScreen.title,
);

class AlertDialogScreen extends StatelessWidget {
  static const String routeName = 'AlertDialog';
  static const String title = 'AlertDialog';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      AlertDialogScreen.title,
    );
  }
}
