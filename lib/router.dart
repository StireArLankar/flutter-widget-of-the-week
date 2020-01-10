import 'package:flutter/material.dart';

import 'package:flutter_widget_of_the_week/1_safe_area/safe_area.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';
import 'package:flutter_widget_of_the_week/3_wrap/wrap.dart';
import 'package:flutter_widget_of_the_week/4_animated_container/animated_container.dart';
import 'package:flutter_widget_of_the_week/5_opacity/opacity.dart';
import 'package:flutter_widget_of_the_week/6_future_builder/future_builder.dart';
import 'package:flutter_widget_of_the_week/app_drawer.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SafeAreaScreen.routeName:
      return MaterialPageRoute(builder: (_) => SafeAreaScreen());
    case ExpandedScreen.routeName:
      return MaterialPageRoute(builder: (_) => ExpandedScreen());
    case WrapScreen.routeName:
      return MaterialPageRoute(builder: (_) => WrapScreen());
    case AnimatedContainerScreen.routeName:
      return MaterialPageRoute(builder: (_) => AnimatedContainerScreen());
    case OpacityScreen.routeName:
      return MaterialPageRoute(builder: (_) => OpacityScreen());
    case FutureBuilderScreen.routeName:
      return MaterialPageRoute(builder: (_) => FutureBuilderScreen());
    default:
      return MaterialPageRoute(builder: (_) => DefaultScreen(settings.name));
  }
}

class DefaultScreen extends StatelessWidget {
  final String name;

  DefaultScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for $name'),
      ),
      appBar: AppBar(),
      drawer: AppDrawer(),
    );
  }
}
