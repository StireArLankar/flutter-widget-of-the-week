import 'package:flutter/material.dart';

class FourthTab extends StatefulWidget {
  @override
  _FourthTabState createState() => _FourthTabState();
}

var temp = 0.0;

class _FourthTabState extends State<FourthTab> {
  final _controller = ScrollController();
  // double _size = 0.0;
  final List<double> _sizes = [0, 0, 0];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // void setSize(double size) {
  //   setState(() {
  //     print('$_size -> $size');
  //     _size = size;
  //   });
  // }

  void printSize() {
    print('$_sizes');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () => printSize(),
            )
          ],
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Floating'),
          ),
        ),
        SliverLayoutBuilder(
          builder: (ctx, constrains) {
            if (_sizes[0] == 0) {
              _sizes[0] = constrains.precedingScrollExtent;
            }

            return SliverGrid.count(
              crossAxisCount: 3,
              children: [
                Container(color: Colors.red, height: 150.0),
                Container(color: Colors.purple, height: 150.0),
                Container(color: Colors.green, height: 150.0),
                Container(color: Colors.orange, height: 150.0),
                Container(color: Colors.yellow, height: 150.0),
                Container(color: Colors.pink, height: 150.0),
                Container(color: Colors.cyan, height: 150.0),
                Container(color: Colors.indigo, height: 150.0),
                Container(color: Colors.blue, height: 150.0),
              ],
            );
          },
        ),
        SliverLayoutBuilder(builder: (ctx, constrains) {
          if (_sizes[1] == 0) {
            // Timer(Duration(seconds: 0), () {
            //   setSize(constrains.precedingScrollExtent);
            // });
            _sizes[1] = constrains.precedingScrollExtent;
          }

          return SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.blue[100 * (index % 9)],
                );
              },
              childCount: 100,
            ),
          );
        }),
        SliverLayoutBuilder(builder: (ctx, constrains) {
          if (_sizes[2] == 0) {
            // Timer(Duration(seconds: 0), () {
            //   setSize(constrains.precedingScrollExtent);
            // });
            _sizes[2] = constrains.precedingScrollExtent;
          }

          return SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.green[100 * (index % 9)],
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
