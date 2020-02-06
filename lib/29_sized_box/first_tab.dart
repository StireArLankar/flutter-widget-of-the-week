import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            child: RaisedButton(
              child: Text('SizedBox'),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            child: RaisedButton(
              child: Text('Container'),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 200,
            height: 200,
            child: RaisedButton(
              child: Text('SizedBox 2'),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            height: 200,
            child: RaisedButton(
              child: Text('Container'),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              child: Text('SizedBox 2'),
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text('Container'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
