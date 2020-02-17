import 'package:flutter/material.dart';

import '../tabs.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

final draggableRoute = RouteItem(
  (ctx) => DraggableScreen(),
  DraggableScreen.routeName,
  DraggableScreen.title,
);

class DraggableScreen extends StatelessWidget {
  static const String routeName = 'Draggable';
  static const String title = 'Draggable';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab(), ThirdTab()],
      ['first', 'second', 'third'],
      DraggableScreen.title,
    );
  }
}
