import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        child: InkWell(
          onTap: () => setState(() => opacity = opacity == 0 ? 1 : 0),
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 700),
            curve: Curves.easeInOut,
            opacity: opacity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(child: Text('$opacity')),
            ),
          ),
        ),
      ),
    );
  }
}
