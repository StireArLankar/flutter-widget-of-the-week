import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 40,
          left: 30,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 150, minWidth: 200),
            child: RaisedButton(
              child: Text('Button'),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 60,
          child: IgnorePointer(
            ignoring: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 150, maxWidth: 50),
              child: RaisedButton(
                child: Text('Button 2'),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 150,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 150, maxWidth: 50),
            child: Container(color: Colors.amber[50]),
          ),
        ),
      ],
    );
  }
}
