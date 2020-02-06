import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

class SizedBoxScreen extends StatelessWidget {
  static const String routeName = 'SizedBox';
  static const String title = 'SizedBox';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab()],
      ['first', 'second', 'third'],
      SizedBoxScreen.title,
    );
  }
}
