import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 20,
        child: SizedBox.shrink(
          child: RaisedButton(
            child: Text('SizedBox.expand'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
