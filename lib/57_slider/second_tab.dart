import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  var selectedRange = RangeValues(0.2, 0.8);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RangeSlider(
          values: selectedRange,
          onChanged: (newVal) {
            setState(() => selectedRange = newVal);
          },
          divisions: 10,
          labels: RangeLabels(
            '${selectedRange.start}',
            '${selectedRange.end}',
          ),
          min: 0,
          max: 2,
        ),
      ),
    );
  }
}
