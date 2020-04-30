import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final draggableScrollableSheetRoute = RouteItem(
  (ctx) => DraggableScrollableSheetScreen(),
  DraggableScrollableSheetScreen.routeName,
  DraggableScrollableSheetScreen.title,
);

class DraggableScrollableSheetScreen extends StatelessWidget {
  static const String routeName = 'DraggableScrollableSheet';
  static const String title = 'DraggableScrollableSheet';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      DraggableScrollableSheetScreen.title,
    );
  }
}
