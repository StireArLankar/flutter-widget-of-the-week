import 'package:flutter/material.dart';

import 'package:flutter/physics.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  static const _scrollPhysics = const ExtentScrollPhysics(
    itemExtent: 80,
    separatorSpacing: 10,
    parent: BouncingScrollPhysics(),
  );

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
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              physics: _scrollPhysics,
              separatorBuilder: (context, _) => SizedBox(width: _scrollPhysics.dividerSpacing),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: _scrollPhysics.itemExtent, // set height for vertical
                  child: CardItem(index: index),
                );
              },
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

  const ExtentScrollPhysics({
    ScrollPhysics parent,
    @required this.itemExtent,
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
    );
  }

  double _getItem(ScrollPosition position) {
    return position.pixels / (itemExtent + dividerSpacing);
  }

  double _getPixels(ScrollPosition position, double item) {
    return item * (itemExtent + dividerSpacing);
  }

  double _getTargetPixels(ScrollPosition position, Tolerance tolerance, double velocity) {
    double page = _getItem(position);
    double coeff = 0.5;

    if (velocity.abs() > 2000) {
      coeff += (position.viewportDimension / 2 / (itemExtent + dividerSpacing)).ceil();
    }

    if (velocity < -tolerance.velocity) {
      page -= coeff;
    } else if (velocity > tolerance.velocity) {
      page += coeff;
    }

    return _getPixels(position, page.roundToDouble()).clamp(0.0, position.maxScrollExtent);
  }

  @override
  Simulation createBallisticSimulation(ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = this.tolerance;
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

    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
