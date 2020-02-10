import 'package:flutter/material.dart';

import 'package:flutter_widget_of_the_week/app_drawer.dart';

import '11_sliver_app_bar/sliver_app_bar.dart';
import '12_sliver_list/sliver_list.dart';
import '13_fade_in_image/fade_in_image.dart';
import '14_stream_builder/stream_builder.dart';
import '16_clip_r_rect/clip_r_rect.dart';
import '17_hero/hero.dart';
import '18_custom_paint/custom_paint.dart';
import '19_tooltip/tooltip.dart';
import '1_safe_area/safe_area.dart';
import '20_fitter_box/fitted_box.dart';
import '21_layout_builder/layout_builder.dart';
import '22_absorb_pointer/absorb_pointer.dart';
import '23_transform/transform.dart';
import '24_backdrop_filter/backdrop_filter.dart';
import '25_align/align.dart';
import '26_positioned/positioned.dart';
import '27_animated_builder/animated_builder.dart';
import '28_dismissible/dismissible.dart';
import '29_sized_box/sized_box.dart';
import '2_expanded/expanded.dart';
import '31_draggable/draggable.dart';
import '3_wrap/wrap.dart';
import '4_animated_container/animated_container.dart';
import '5_opacity/opacity.dart';
import '6_future_builder/future_builder.dart';
import '7_fade_transition/fade_transition.dart';
import '8_fab/fab.dart';
import '9_page_view/page_view.dart';
import '10_table/table.dart';

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
  RouteItem(
    (ctx) => TableScreen(),
    TableScreen.routeName,
    TableScreen.title,
  ),
  RouteItem(
    (ctx) => SliverAppBarScreen(),
    SliverAppBarScreen.routeName,
    SliverAppBarScreen.title,
  ),
  RouteItem(
    (ctx) => SliverListScreen(),
    SliverListScreen.routeName,
    SliverListScreen.title,
  ),
  RouteItem(
    (ctx) => FadeInImageScreen(),
    FadeInImageScreen.routeName,
    FadeInImageScreen.title,
  ),
  RouteItem(
    (ctx) => StreamBuilderScreen(),
    StreamBuilderScreen.routeName,
    StreamBuilderScreen.title,
  ),
  RouteItem(
    (ctx) => ClipRRectScreen(),
    ClipRRectScreen.routeName,
    ClipRRectScreen.title,
  ),
  RouteItem(
    (ctx) => HeroScreen(),
    HeroScreen.routeName,
    HeroScreen.title,
  ),
  RouteItem(
    (ctx) => CustomPaintScreen(),
    CustomPaintScreen.routeName,
    CustomPaintScreen.title,
  ),
  RouteItem(
    (ctx) => TooltipScreen(),
    TooltipScreen.routeName,
    TooltipScreen.title,
  ),
  RouteItem(
    (ctx) => FittedBoxScreen(),
    FittedBoxScreen.routeName,
    FittedBoxScreen.title,
  ),
  RouteItem(
    (ctx) => LayoutBuilderScreen(),
    LayoutBuilderScreen.routeName,
    LayoutBuilderScreen.title,
  ),
  RouteItem(
    (ctx) => AbsorbPointerScreen(),
    AbsorbPointerScreen.routeName,
    AbsorbPointerScreen.title,
  ),
  RouteItem(
    (ctx) => TransformScreen(),
    TransformScreen.routeName,
    TransformScreen.title,
  ),
  RouteItem(
    (ctx) => BackdropFilterScreen(),
    BackdropFilterScreen.routeName,
    BackdropFilterScreen.title,
  ),
  RouteItem(
    (ctx) => AlignScreen(),
    AlignScreen.routeName,
    AlignScreen.title,
  ),
  RouteItem(
    (ctx) => PositionedScreen(),
    PositionedScreen.routeName,
    PositionedScreen.title,
  ),
  RouteItem(
    (ctx) => AnimatedBuilderScreen(),
    AnimatedBuilderScreen.routeName,
    AnimatedBuilderScreen.title,
  ),
  RouteItem(
    (ctx) => DismissibleScreen(),
    DismissibleScreen.routeName,
    DismissibleScreen.title,
  ),
  RouteItem(
    (ctx) => SizedBoxScreen(),
    SizedBoxScreen.routeName,
    SizedBoxScreen.title,
  ),
  RouteItem(
    (ctx) => DraggableScreen(),
    DraggableScreen.routeName,
    DraggableScreen.title,
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
