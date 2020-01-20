import 'package:flutter/material.dart';

import '../tabs.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class StreamBuilderScreen extends StatelessWidget {
  static const String routeName = 'stream-builder';
  static const String title = 'Stream Builder';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), SecondTab()],
      ['first', 'second'],
      StreamBuilderScreen.title,
    );
  }
}
