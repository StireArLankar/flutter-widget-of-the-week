import 'package:flutter/material.dart';
import 'dart:math';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Transform.rotate(
            angle: pi / 4,
            child: buildContainer(),
          ),
          Transform.scale(
            scale: 2.5,
            child: buildContainer(),
          ),
          Transform.translate(
            offset: Offset(20, 0),
            child: buildContainer(),
          ),
          Transform(
            transform: Matrix4.skewX(0.3),
            child: buildContainer(),
          ),
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.01)
              ..rotateX(0.6),
            alignment: FractionalOffset.center,
            child: buildContainer(),
          ),
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
      color: Colors.pinkAccent,
      child: Icon(
        Icons.menu,
        size: 50,
      ),
    );
  }
}
