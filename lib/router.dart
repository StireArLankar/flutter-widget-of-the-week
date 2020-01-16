import 'package:flutter/material.dart';

import 'package:flutter_widget_of_the_week/app_drawer.dart';

import '1_safe_area/safe_area.dart';
import '2_expanded/expanded.dart';
import '3_wrap/wrap.dart';
import '4_animated_container/animated_container.dart';
import '5_opacity/opacity.dart';
import '6_future_builder/future_builder.dart';
import '7_fade_transition/fade_transition.dart';
import '8_fab/fab.dart';
import '9_page_view/page_view.dart';

class RouteItem {
  final Widget Function(BuildContext) screenBuilder;
  final String routeName;
  final String title;

  const RouteItem(
    this.screenBuilder,
    this.routeName,
    this.title,
  );
}

final routes = [
  RouteItem(
    (ctx) => SafeAreaScreen(),
    SafeAreaScreen.routeName,
    'Safe Area',
  ),
  RouteItem(
    (ctx) => ExpandedScreen(),
    ExpandedScreen.routeName,
    'Expanded',
  ),
  RouteItem(
    (ctx) => WrapScreen(),
    WrapScreen.routeName,
    'Wrap',
  ),
  RouteItem(
    (ctx) => AnimatedContainerScreen(),
    AnimatedContainerScreen.routeName,
    'Animated Container',
  ),
  RouteItem(
    (ctx) => OpacityScreen(),
    OpacityScreen.routeName,
    'Opacity',
  ),
  RouteItem(
    (ctx) => FutureBuilderScreen(),
    FutureBuilderScreen.routeName,
    'Future Builder',
  ),
  RouteItem(
    (ctx) => FadeTransitionScreen(),
    FadeTransitionScreen.routeName,
    FadeTransitionScreen.title,
  ),
  RouteItem(
    (ctx) => FABScreen(),
    FABScreen.routeName,
    FABScreen.title,
  ),
  RouteItem(
    (ctx) => PageViewScreen(),
    PageViewScreen.routeName,
    PageViewScreen.title,
  ),
];

Route<dynamic> generateRoutes(RouteSettings settings) {
  final route = routes.firstWhere((route) {
    return route.routeName == settings.name;
  }, orElse: () => null);

  if (route == null) {
    return MaterialPageRoute(builder: (_) => DefaultScreen(settings.name));
  }

  return MaterialPageRoute(builder: route.screenBuilder);
  // switch (settings.name) {
  //   case SafeAreaScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => SafeAreaScreen());
  //   case ExpandedScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => ExpandedScreen());
  //   case WrapScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => WrapScreen());
  //   case AnimatedContainerScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => AnimatedContainerScreen());
  //   case OpacityScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => OpacityScreen());
  //   case FutureBuilderScreen.routeName:
  //     return MaterialPageRoute(builder: (_) => FutureBuilderScreen());
  //   default:
  //     return MaterialPageRoute(builder: (_) => DefaultScreen(settings.name));
  // }
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
