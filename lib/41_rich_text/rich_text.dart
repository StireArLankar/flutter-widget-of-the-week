import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final richTextRoute = RouteItem(
  (ctx) => RichTextScreen(),
  RichTextScreen.routeName,
  RichTextScreen.title,
);

class RichTextScreen extends StatelessWidget {
  static const String routeName = 'RichText';
  static const String title = 'RichText';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      RichTextScreen.title,
    );
  }
}
