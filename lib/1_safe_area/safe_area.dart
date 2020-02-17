import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';

// CHECK DRAWER WITHOUT SAFEAREA AND WITH IT

final safeAreaRoute = RouteItem(
  (ctx) => SafeAreaScreen(),
  SafeAreaScreen.routeName,
  SafeAreaScreen.title,
);

class SafeAreaScreen extends StatelessWidget {
  static const String routeName = 'safe-area';
  static const String title = 'Safe Area';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'second'],
      SafeAreaScreen.title,
    );
  }
}

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          children: List.generate(
            100,
            (i) => Text(
              'Some text',
            ),
          ),
        ),
      ),
    );
  }
}
