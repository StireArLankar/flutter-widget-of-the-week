import 'package:flutter/material.dart';

import '../app_drawer.dart';
import '../router.dart';
import 'first_tab.dart';

final fadeInImageRoute = RouteItem(
  (ctx) => FadeInImageScreen(),
  FadeInImageScreen.routeName,
  FadeInImageScreen.title,
);

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
