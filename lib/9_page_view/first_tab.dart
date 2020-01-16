import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  int _page = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.brown,
                style: BorderStyle.solid,
                width: 10,
              ),
            ),
            child: PageView(
              controller: _controller,
              children: <Widget>[
                MyPageWidget(1),
                MyPageWidget(2),
                MyPageWidget(3),
              ],
              pageSnapping: false,
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                MyPageWidget(1),
                MyPageWidget(2),
                MyPageWidget(3),
              ],
            ),
          ),
          Container(
            height: 300,
            color: Colors.blueGrey,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _controller,
              children: <Widget>[
                MyPageWidget(1),
                MyPageWidget(2),
                MyPageWidget(3),
              ],
            ),
          ),
          Container(
            height: 300,
            color: Colors.cyan,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                MyPageWidget(1),
                MyPageWidget(2),
                MyPageWidget(3),
              ],
            ),
          ),
          Container(
            height: 300,
            color: Colors.deepPurple,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            child: PageView.builder(
              itemBuilder: (ctx, pos) {
                return Container(
                  color: pos % 2 == 0 ? Colors.pink : Colors.cyan,
                  child: MyPageWidget(pos),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyPageWidget extends StatelessWidget {
  final int index;

  MyPageWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.amber.withGreen(index * 30),
        child: Center(
          child: Text('$index'),
        ),
      ),
    );
  }
}
