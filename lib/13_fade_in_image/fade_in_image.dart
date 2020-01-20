import 'package:flutter/material.dart';

import '../app_drawer.dart';
import 'first_tab.dart';

class FadeInImageScreen extends StatelessWidget {
  static const String routeName = 'fade-in-image';
  static const String title = 'Fade In Image';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FadeInImageScreen.title),
      ),
      drawer: AppDrawer(),
      body: FirstTab(),
    );
  }
}
