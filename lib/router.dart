import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/51_fractionally_sized_box/fractionally_sized_box.dart';
import 'package:flutter_widget_of_the_week/52_list_view/list_view.dart';
import 'package:flutter_widget_of_the_week/53_list_tile/list_tile.dart';
import 'package:flutter_widget_of_the_week/54_container/container.dart';

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
import '32_animated_list/animated_list.dart';
import '33_flexible/flexible.dart';
import '35_spacer/spacer.dart';
import '37_animated_icon/animated_icon.dart';
import '39_limited_box/limited_box.dart';
import '3_wrap/wrap.dart';
import '40_placeholder/placeholder.dart';
import '41_rich_text/rich_text.dart';
import '42_reordable_list_view/reordable_list_view.dart';
import '43_animated_switcher/animated_switcher.dart';
import '44_animated_positioned/animated_positioned.dart';
import '45_animated_padding/animated_padding.dart';
import '46_indexed_stack/indexed_stack.dart';
import '47_semantics/semantics.dart';
import '48_constrained_box/constrained_box.dart';
import '49_stack/stack.dart';
import '4_animated_container/animated_container.dart';
import '50_animated_opacity/animated_opacity.dart';
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
  safeAreaRoute,
  expandedRoute,
  wrapRoute,
  animatedContainerRoute,
  opacityRoute,
  futureBuilderRoute,
  fadeTransitionRoute,
  fABRoute,
  pageViewRoute,
  tableRoute,
  sliverAppBarRoute,
  sliverListRoute,
  fadeInImageRoute,
  streamBuilderRoute,
  clipRRectRoute,
  heroRoute,
  customPaintRoute,
  tooltipRoute,
  fittedBoxRoute,
  layoutBuilderRoute,
  absorbPointerRoute,
  transformRoute,
  backdropFilterRoute,
  alignRoute,
  positionedRoute,
  animatedBuilderRoute,
  dismissibleRoute,
  sizedBoxRoute,
  draggableRoute,
  animatedListRoute,
  flexibleRoute,
  spacerRoute,
  animatedIconRoute,
  limitedBoxRoute,
  placeholderRoute,
  richTextRoute,
  reordableListViewRoute,
  animatedSwitcherRoute,
  animatedPositionedRoute,
  animatedPaddingRoute,
  indexedStackRoute,
  semanticsRoute,
  constrainedBoxRoute,
  stackRoute,
  animatedOpacityRoute,
  fractionallySizedBoxRoute,
  listViewRoute,
  listTileRoute,
  containerRoute
];

Route<dynamic> generateRoutes(RouteSettings settings) {
  final route = routes.firstWhere((route) {
    return route.routeName == settings.name;
  }, orElse: () => null);

  if (route == null) {
    return MaterialPageRoute(builder: (_) => DefaultScreen(settings.name));
  }

  return MaterialPageRoute(builder: route.screenBuilder);
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
