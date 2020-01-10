import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/tabs.dart';

import 'first_tab.dart';
import 'second_tab.dart';

class OpacityScreen extends StatelessWidget {
  static const String routeName = 'opacity';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['Static', 'Animated'],
      'Opacity',
    );
  }
}
