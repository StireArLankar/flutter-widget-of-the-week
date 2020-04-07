import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  double padding = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        child: InkWell(
          onTap: () => setState(() => padding = padding == 0 ? 30 : 0),
          child: AnimatedPadding(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceOut,
            padding: EdgeInsets.all(padding),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(child: Text('$padding')),
            ),
          ),
        ),
      ),
    );
  }
}
