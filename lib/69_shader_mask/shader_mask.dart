import 'package:flutter/material.dart';

import '../router.dart';
import '../tabs.dart';
import 'first_tab.dart';

final shaderMaskRoute = RouteItem(
  (ctx) => ShaderMaskScreen(),
  ShaderMaskScreen.routeName,
  ShaderMaskScreen.title,
);

class ShaderMaskScreen extends StatelessWidget {
  static const String routeName = 'ShaderMask';
  static const String title = 'ShaderMask';

  @override
  Widget build(BuildContext context) {
    return TabsScreen(
      [FirstTab(), FirstTab()],
      ['first', 'first'],
      ShaderMaskScreen.title,
    );
  }
}
