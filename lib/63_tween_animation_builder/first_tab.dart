import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  Color start = Colors.green;
  Color end = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: FittedBox(
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/placeholder.jpg'),
              const SizedBox(width: 10),
              TweenAnimationBuilder<Color>(
                duration: const Duration(seconds: 3),
                curve: Curves.easeInOut,
                tween: ColorTween(begin: start, end: end),
                builder: (ctx, color, child) => ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                  child: child,
                ),
                child: Image.asset('assets/images/placeholder.jpg'),
                onEnd: () => setState(() {
                  final temp = start;
                  start = end;
                  end = temp;
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
