import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.black12,
            child: Stack(
              children: <Widget>[
                Container(width: 200, height: 200, color: Colors.amber),
                Container(width: 150, height: 150, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.purple),
                Positioned(
                  bottom: 0,
                  child: Container(width: 50, height: 50, color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.black12,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(width: 200, height: 200, color: Colors.amber),
                Container(width: 150, height: 150, color: Colors.red),
                Container(width: 100, height: 100, color: Colors.purple),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          )
        ],
      ),
    );
  }
}
