import 'package:flutter/material.dart';

import '../app_drawer.dart';
import 'first_tab.dart';

class FadeTransitionScreen extends StatelessWidget {
  static const String routeName = 'fade-transition';
  static const String title = 'Fade Transition';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FadeTransitionScreen.title),
      ),
      drawer: AppDrawer(),
      body: FirstTab(),
    );
  }
}
