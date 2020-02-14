import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
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
            ),
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

  Draggable buildFlexible({Axis axis}) {
    return Draggable(
      dragAnchor: DragAnchor.child,
      axis: axis,
      child: Container(
        width: 90.0,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.teal,
        ),
      ),
      feedback: Container(
        width: 90.0,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xfffda085), Color(0xFFF6D365)],
          ),
        ),
      ),
      childWhenDragging: Container(
        width: 90.0,
        height: 90,
        color: Colors.grey,
      ),
    );
  }
}
