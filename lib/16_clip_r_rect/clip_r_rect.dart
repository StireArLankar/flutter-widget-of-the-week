import 'package:flutter/material.dart';

import '../app_drawer.dart';
import 'first_tab.dart';

class ClipRRectScreen extends StatelessWidget {
  static const String routeName = 'cliprrect';
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
