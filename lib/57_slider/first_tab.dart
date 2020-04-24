import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  double range = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Slider(
            value: range,
            onChanged: (newVal) {
              setState(() => range = newVal);
            },
            divisions: 10,
            label: '$range',
            min: 0,
            max: 10,
          ),
        ),
        Container(
          child: CupertinoSlider(
            value: range,
            onChanged: (newVal) {
              setState(() => range = newVal);
            },
            divisions: 10,
            min: 0,
            max: 10,
            activeColor: Colors.red,
            thumbColor: Colors.green,
          ),
        ),
        Container(
          child: Slider.adaptive(
            value: range,
            onChanged: (newVal) {
              setState(() => range = newVal);
            },
            divisions: 10,
            min: 0,
            max: 10,
          ),
        ),
      ],
    );
  }
}
