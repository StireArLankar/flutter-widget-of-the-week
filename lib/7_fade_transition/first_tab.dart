import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  bool dir = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap() {
    if (dir) {
      _controller.forward();
    } else {
      _controller.reverse();
    }

    setState(() {
      dir = !dir;
    });
  }

  Widget buildBox() {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Text(
                'Click me',
                style: TextStyle(fontSize: 30),
              ),
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
      ),
    );
  }
}
