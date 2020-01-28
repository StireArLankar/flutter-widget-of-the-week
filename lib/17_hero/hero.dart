import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

class HeroScreen extends StatelessWidget {
  static const String routeName = 'Hero';
  static const String title = 'Hero';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab()],
      ['first', 'second', 'third'],
      HeroScreen.title,
    );
  }
}
