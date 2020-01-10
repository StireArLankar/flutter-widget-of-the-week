import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  bool flag = false;

  Widget buildBox(double opacity) {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      opacity: flag ? opacity : 1 - opacity,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    );
  }

  void toggle() {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggle,
      child: SafeArea(
        child: Center(
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: List.generate(12, (i) {
              return buildBox((i + 1) / 12);
            }),
          ),
        ),
      ),
    );
  }
}
