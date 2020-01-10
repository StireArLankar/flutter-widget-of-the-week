import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/4_animated_container/second_tab.dart';
import 'package:flutter_widget_of_the_week/4_animated_container/third_tab.dart';
import 'package:flutter_widget_of_the_week/tabs.dart';

import './first_tab.dart';

class AnimatedContainerScreen extends StatelessWidget {
  static const String routeName = 'animated-container';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThridTab()],
      ['Colors', 'Sizes', 'Transform'],
      'AnimatedContainer',
    );
  }
}
