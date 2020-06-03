import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildBox(Colors.red),
          Divider(color: Colors.orange, height: 100, endIndent: 10, indent: 20, thickness: 5),
          buildBox(Colors.red),
          Divider(color: Colors.orange, height: 100, endIndent: 20, indent: 10, thickness: 5),
          Divider(color: Colors.orange, height: 10, endIndent: 1, indent: 1, thickness: 5),
          buildBox(Colors.red),
        ],
      ),
    );
  }

  Container buildBox(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 200,
      height: 200,
    );
  }
}
