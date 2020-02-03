import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class AnimatedBuilderScreen extends StatelessWidget {
  static const String routeName = 'animated-builder';
  static const String title = 'Animated Builder';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      AnimatedBuilderScreen.title,
    );
  }
}
