import 'package:flutter/material.dart';

class TransformedAnimatedBox extends StatefulWidget {
  final double start;
  final double end;

  const TransformedAnimatedBox(this.start, this.end);

  @override
  _TransformedAnimatedBoxState createState() => _TransformedAnimatedBoxState();
}

class _TransformedAnimatedBoxState extends State<TransformedAnimatedBox> {
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
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.blue],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        width: 100,
        height: 100,
        transform: Matrix4.skewX(flag ? widget.end : widget.start),
      ),
    );
  }
}
