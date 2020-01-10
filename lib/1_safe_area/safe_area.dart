import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/tabs.dart';

// CHECK DRAWER WITHOUT SAFEAREA AND WITH IT

class SafeAreaScreen extends StatelessWidget {
  static const String routeName = 'safe-area';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'second'],
      'Safe Area',
    );
  }
}

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          children: List.generate(
            100,
            (i) => Text(
              'Some text',
            ),
          ),
        ),
      ),
    );
  }
}
