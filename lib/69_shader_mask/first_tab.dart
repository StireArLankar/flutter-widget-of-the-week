import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const text = const Text(
  'I\'m burning the memories',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white, // !IMPORTANT TO CHANGE BLACK COLOR TO SMTHG!
    fontSize: 40,
  ),
);

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(colors: [
            Colors.blue.shade400,
            Colors.blue.shade900,
          ]).createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: text,
        ),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1.0,
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: text,
        )
      ],
    );
  }
}
