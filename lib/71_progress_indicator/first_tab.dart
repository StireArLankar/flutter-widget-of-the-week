import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  Animation<Color> _colorTween;
  double value = 0.0;

  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _colorTween = _animationController.drive(ColorTween(
      begin: Colors.yellow,
      end: Colors.blue,
    ));

    _animationController.repeat(reverse: true);

    _animation = _animationController.drive(Tween(
      begin: 0.0,
      end: 1.5,
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => {}),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircularProgressIndicator(
              valueColor: _colorTween,
              backgroundColor: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircularProgressIndicator(valueColor: _colorTween),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LinearProgressIndicator(valueColor: _colorTween),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AnimatedBuilder(
              animation: _animation,
              builder: (ctx, child) => CircularProgressIndicator(value: _animation.value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AnimatedBuilder(
              animation: _colorTween,
              builder: (ctx, child) => Container(color: _colorTween.value, width: 50, height: 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
