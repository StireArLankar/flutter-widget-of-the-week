import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 5,
                color: Colors.amber,
                style: BorderStyle.solid,
              ),
              insets: EdgeInsets.fromLTRB(20, 0, 20, 23),
            ),
            labelColor: Colors.black,
            tabs: <Widget>[
              Tab(text: "Cat"),
              Tab(text: "Dog"),
              Tab(text: "Rabbit"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green),
              ],
            ),
          ),
        ],
      ),
      initialIndex: 0,
    );
  }
}
