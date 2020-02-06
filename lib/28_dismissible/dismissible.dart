import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class DismissibleScreen extends StatelessWidget {
  static const String routeName = 'Dismissible';
  static const String title = 'Dismissible';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      DismissibleScreen.title,
    );
  }
}
