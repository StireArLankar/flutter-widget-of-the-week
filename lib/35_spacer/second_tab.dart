import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          buildContainer(Colors.teal),
          Spacer(flex: 2),
          buildContainer(Colors.red),
          Spacer(),
          buildContainer(Colors.purple),
          Spacer(flex: 3),
          buildContainer(Colors.indigo),
          Spacer(),
        ],
      ),
    );
  }

  Container buildContainer(Color color) {
    return Container(
      color: color,
      height: 50,
      width: 50,
    );
  }
}
