import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class PageViewScreen extends StatelessWidget {
  static const String routeName = 'page-view';
  static const String title = 'Page View';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      PageViewScreen.title,
    );
  }
}
