import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class ScrollPositioner {
  double start = 0.0;
  double target = 0.0;
  bool active = false;
  DateTime dateStart = DateTime.now();
}

class _FirstTabState extends State<FirstTab> {
  ExtentScrollPhysics _scrollPhysics;
  ScrollController _controller;
  final ScrollPositioner scrollPositioner = ScrollPositioner();

  @override
  void initState() {
    _controller = ScrollController();
    _scrollPhysics = ExtentScrollPhysics(
      itemExtent: 80,
      separatorSpacing: 10,
      padding: 15,
      scrollPositioner: scrollPositioner,
      parent: BouncingScrollPhysics(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recommended for you",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 130,
            color: Colors.amber[100],
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  scrollPositioner.start = scrollNotification.metrics.pixels;
                  scrollPositioner.dateStart = DateTime.now();
                  scrollPositioner.active = false;
                }
                return true;
              },
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: 25,
                physics: _scrollPhysics,
                itemExtent: _scrollPhysics.itemExtent + _scrollPhysics.dividerSpacing,
                // separatorBuilder: (context, _) => SizedBox(width: _scrollPhysics.dividerSpacing),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red[100],
                    padding: EdgeInsets.symmetric(horizontal: _scrollPhysics.dividerSpacing / 2),
                    child: SizedBox(
                      width: _scrollPhysics.itemExtent,
                      child: CardItem(index: index),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatefulWidget {
  final int index;

  CardItem({this.index});

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[(widget.index + 1) * 100 % 900 + 100],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '${widget.index}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          "Tile Name ${widget.index}",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(fontSize: 12.0),
        ),
        Text(
          "1 MB",
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}

class ExtentScrollPhysics extends ScrollPhysics {
  final double itemExtent;
  final double dividerSpacing;
  final double padding;
  final ScrollPositioner scrollPositioner;

  const ExtentScrollPhysics({
    ScrollPhysics parent,
    @required this.itemExtent,
    @required this.scrollPositioner,
    @required this.padding,
    double separatorSpacing,
  })  : assert(itemExtent != null && itemExtent > 0),
        dividerSpacing = separatorSpacing ?? 0,
        super(parent: parent);

  @override
  ExtentScrollPhysics applyTo(ScrollPhysics ancestor) {
    return ExtentScrollPhysics(
      parent: buildParent(ancestor),
      itemExtent: itemExtent,
      separatorSpacing: dividerSpacing,
      padding: padding,
      scrollPositioner: scrollPositioner,
    );
  }

  double _getItem(ScrollPosition position) {
    return position.pixels / (itemExtent + dividerSpacing);
  }

  double _getPixels(ScrollPosition position, double item) {
    return item * (itemExtent + dividerSpacing);
  }

  static const coeff = 0.5;

  double _getTargetPixels(ScrollPosition position, Tolerance tolerance, double velocity) {
    double page = _getItem(position);

    if (velocity < -tolerance.velocity) {
      page -= coeff;
    } else if (velocity > tolerance.velocity) {
      page += coeff;
    }

    final target = _getPixels(position, page.roundToDouble());

    return target.clamp(position.minScrollExtent, position.maxScrollExtent);
  }

  @override
  Simulation createBallisticSimulation(ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      scrollPositioner.active = false;
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = this.tolerance;

    if (scrollPositioner.active && scrollPositioner.target != position.pixels) {
      // if ((scrollPositioner.target - position.pixels).abs() < 1) {
      //   print('infin');
      //   return null;
      // }

      return ScrollSpringSimulation(
        spring,
        position.pixels,
        scrollPositioner.target,
        velocity,
        tolerance: tolerance,
      );
    }

    final timediff = scrollPositioner.dateStart.difference(DateTime.now());
    final isSwipe = timediff.inMilliseconds < 300;

    if (velocity.abs() > 1500 && isSwipe) {
      final size = itemExtent + dividerSpacing;

      final count = ((position.viewportDimension - padding * 2) / size).floor();
      final dir = velocity.sign;
      final start = (scrollPositioner.start / size).ceil() * size;
      final offset = start + dir * count * size;
      final target =
          offset.clamp(position.minScrollExtent, position.maxScrollExtent).floorToDouble();
      print('Computed target: $target --- start: $start ---- offset: $offset');
      print('maxScrollExtent: ${position.maxScrollExtent}');
      print('viewportDimension: ${position.viewportDimension}');
      scrollPositioner.target = target;
      scrollPositioner.active = true;

      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }

    final double target = _getTargetPixels(position, tolerance, velocity);

    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }

    scrollPositioner.active = false;

    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
