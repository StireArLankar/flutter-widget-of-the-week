import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

final transformRoute = RouteItem(
  (ctx) => TransformScreen(),
  TransformScreen.routeName,
  TransformScreen.title,
);

class TransformScreen extends StatelessWidget {
  static const String routeName = 'transform';
  static const String title = 'Transform';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab()],
      ['first', 'second', 'thrid'],
      TransformScreen.title,
    );
  }
}
