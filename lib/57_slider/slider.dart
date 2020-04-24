import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final sliderRoute = RouteItem(
  (ctx) => SliderScreen(),
  SliderScreen.routeName,
  SliderScreen.title,
);

class SliderScreen extends StatelessWidget {
  static const String routeName = 'Slider';
  static const String title = 'Slider';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      SliderScreen.title,
    );
  }
}
