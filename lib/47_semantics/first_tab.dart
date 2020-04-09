import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        child: Container(
          color: Colors.amber,
          width: 150,
          height: 200,
        ),
        button: true,
        checked: true,
        container: true,
        currentValueLength: 10,
        decreasedValue: 'test',
        enabled: true,
        header: true,
      ),
    );
  }
}
