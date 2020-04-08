import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final indexedStackRoute = RouteItem(
  (ctx) => IndexedStackScreen(),
  IndexedStackScreen.routeName,
  IndexedStackScreen.title,
);

class IndexedStackScreen extends StatelessWidget {
  static const String routeName = 'IndexedStack';
  static const String title = 'Indexed Stack';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      IndexedStackScreen.title,
    );
  }
}
