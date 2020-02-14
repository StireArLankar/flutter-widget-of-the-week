import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';
import 'fourth_tab.dart';

class FlexibleScreen extends StatelessWidget {
  static const String routeName = 'Flexible';
  static const String title = 'Flexible';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab(), FourthTab()],
      ['first', 'second', 'third', 'fourth'],
      FlexibleScreen.title,
    );
  }
}
