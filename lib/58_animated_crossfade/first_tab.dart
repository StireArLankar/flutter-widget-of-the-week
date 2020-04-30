import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => isActive = !isActive),
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          alignment: Alignment.center,
          child: AnimatedCrossFade(
            duration: Duration(milliseconds: 700),
            sizeCurve: Curves.easeOut,
            firstCurve: Curves.easeOut,
            secondCurve: Curves.easeOut,
            crossFadeState:
                isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            firstChild: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
              height: 150,
              width: 200,
              alignment: Alignment.center,
              child: Text('First'),
            ),
            secondChild: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue,
              ),
              height: 250,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text('Second'),
            ),
          ),
        ),
      ),
    );
  }
}
