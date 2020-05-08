import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final imageRoute = RouteItem(
  (ctx) => ImageScreen(),
  ImageScreen.routeName,
  ImageScreen.title,
);

class ImageScreen extends StatelessWidget {
  static const String routeName = 'Image';
  static const String title = 'Image';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ImageScreen.title,
    );
  }
}
