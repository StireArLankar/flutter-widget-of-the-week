import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 100),
            child: Text(
              'Twolined text',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 150),
            child: RaisedButton(
              child: Text('Button'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
