import 'package:flutter/material.dart';

class FourthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Container(
              color: Colors.teal,
              height: 50,
            ),
            fit: FlexFit.tight,
            flex: 2,
          ),
          Flexible(
            child: Container(
              color: Colors.red,
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(color: Colors.purple),
            flex: 3,
          ),
          Flexible(
            child: Container(color: Colors.indigo),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
