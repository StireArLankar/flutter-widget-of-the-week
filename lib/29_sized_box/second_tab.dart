import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: RaisedButton(
        child: Text('SizedBox.expand'),
        onPressed: () {},
      ),
    );
  }
}
