import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class PositionedScreen extends StatelessWidget {
  static const String routeName = 'Positioned';
  static const String title = 'Positioned';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      PositionedScreen.title,
    );
  }
}
