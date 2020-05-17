import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  List<int> items = List.generate(10, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 600,
            margin: EdgeInsets.symmetric(vertical: 5),
            color: Colors.black38,
            child: ListWheelScrollView.useDelegate(
              diameterRatio: 1.5,
              offAxisFraction: -0.5,
              itemExtent: 100,
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      color: Colors.indigo,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('$index'),
                          backgroundColor: Colors.cyan,
                        ),
                        title: Text('Some random title ${items[index]}'),
                      ),
                    ),
                  );
                },
                childCount: items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNepu() {
    return FadeInImage.assetNetwork(
      fadeOutDuration: const Duration(seconds: 3),
      height: 200,
      placeholder: 'assets/images/placeholder.jpg',
      image: 'https://images.alphacoders.com/720/thumb-1920-720915.png',
    );
  }
}
