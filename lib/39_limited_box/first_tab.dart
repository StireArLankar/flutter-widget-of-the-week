import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        width: double.infinity,
        height: 300,
        child: LimitedBox(
          maxHeight: 150,
          maxWidth: 150,
          child: Container(
            color: Colors.red,
            child: Text('Does nothing'),
          ),
        ),
      ),
    );
  }
}
