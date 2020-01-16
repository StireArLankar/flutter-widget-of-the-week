import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  int _page = 0;
  PageController _controller;
  PageController _controller2 = PageController();
  var currentPageValue = 0.0;
  var secondPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _page);
    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page;
      });
    });

    _controller2.addListener(() {
      setState(() {
        secondPageValue = _controller2.page;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.cyan,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            child: PageView.builder(
              controller: _controller,
              itemBuilder: (context, position) {
                if (position == currentPageValue.floor()) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..rotateX(currentPageValue - position),
                    child: Container(
                      color: position % 2 == 0 ? Colors.blue : Colors.pink,
                      child: Center(
                        child: Text(
                          "Page $position 1",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                  );
                } else if (position == currentPageValue.floor() + 1) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..rotateX(currentPageValue - position),
                    child: Container(
                      color: position % 2 == 0 ? Colors.blue : Colors.pink,
                      child: Center(
                        child: Text(
                          "Page $position 2",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    color: position % 2 == 0 ? Colors.blue : Colors.pink,
                    child: Center(
                      child: Text(
                        "Page $position 3",
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                    ),
                  );
                }
              },
              itemCount: 10,
            ),
          ),
          Container(
            height: 300,
            color: Colors.tealAccent,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            child: PageView.builder(
              controller: _controller2,
              itemBuilder: (context, position) {
                if (position == secondPageValue.floor()) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..rotateY(secondPageValue - position)
                      ..rotateZ(secondPageValue - position),
                    child: Container(
                      color: position % 2 == 0 ? Colors.blue : Colors.pink,
                      child: Center(
                        child: Text(
                          "Page",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                  );
                } else if (position == secondPageValue.floor() + 1) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..rotateY(secondPageValue - position)
                      ..rotateZ(secondPageValue - position),
                    child: Container(
                      color: position % 2 == 0 ? Colors.blue : Colors.pink,
                      child: Center(
                        child: Text(
                          "Page",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    color: position % 2 == 0 ? Colors.blue : Colors.pink,
                    child: Center(
                      child: Text(
                        "Page",
                        style: TextStyle(color: Colors.white, fontSize: 22.0),
                      ),
                    ),
                  );
                }
              },
              itemCount: 10,
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
