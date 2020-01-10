import 'package:flutter/material.dart';

class ColoredAnimatedBox extends StatefulWidget {
  final Color startColor;
  final Color endColor;

  const ColoredAnimatedBox(this.startColor, this.endColor);

  @override
  _ColoredAnimatedBoxState createState() => _ColoredAnimatedBoxState();
}

class _ColoredAnimatedBoxState extends State<ColoredAnimatedBox> {
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
        color: flag ? widget.endColor : widget.startColor,
        duration: const Duration(milliseconds: 500),
        width: 100,
        height: 100,
      ),
    );
  }
}
