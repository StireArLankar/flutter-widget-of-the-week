import 'package:flutter/material.dart';

import '../app_drawer.dart';
import '../router.dart';
import 'first_tab.dart';

final clipRRectRoute = RouteItem(
  (ctx) => ClipRRectScreen(),
  ClipRRectScreen.routeName,
  ClipRRectScreen.title,
);

class ClipRRectScreen extends StatelessWidget {
  static const String routeName = 'clipRRect';
  static const String title = 'ClipRRect';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ClipRRectScreen.title),
      ),
      drawer: AppDrawer(),
      body: FirstTab(),
    );
  }
}
