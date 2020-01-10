import 'dart:ui';

import 'package:flutter/material.dart';

class BorderedAnimatedBox extends StatefulWidget {
  final double start;
  final double end;

  const BorderedAnimatedBox(this.start, this.end);

  @override
  _BorderedAnimatedBoxState createState() => _BorderedAnimatedBoxState();
}

class _BorderedAnimatedBoxState extends State<BorderedAnimatedBox> {
  bool flag = false;

  void toggle() {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggle,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(flag ? widget.end : widget.start),
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.blue],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        width: 100,
        height: 100,
      ),
    );
  }
}
