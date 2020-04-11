import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(width: 200, height: 200, color: Colors.amber),
              Container(width: 150, height: 150, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.purple),
              Positioned(
                bottom: -30,
                right: -30,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            overflow: Overflow.clip,
            children: <Widget>[
              Container(width: 200, height: 200, color: Colors.amber),
              Container(width: 150, height: 150, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.purple),
              Positioned(
                bottom: -30,
                right: -30,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
