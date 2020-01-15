import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  Widget buildBox() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.cyan,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(9, (i) {
                return buildBox();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
