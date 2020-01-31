import 'package:flutter/material.dart';
import 'dart:math';

class ThirdTab extends StatefulWidget {
  ThirdTab({Key key}) : super(key: key); // changed

  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween(end: 1.0, begin: 0.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 27, 28, 30),
      child: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateX(pi * _animation.value),
          child: GestureDetector(
            onTap: () {
              if (_animationStatus == AnimationStatus.dismissed) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
            },
            child: _animation.value <= 0.5
                ? Container(
                    color: Colors.blueAccent,
                    width: 200,
                    height: 200,
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                      size: 50,
                    ),
                  )
                : Container(
                    color: Colors.red,
                    width: 200,
                    height: 200,
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
