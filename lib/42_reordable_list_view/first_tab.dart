import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  List<String> items = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'k'];
  // List<String> _list = ["Apple", "Ball", "Cat", "Dog", "Elephant"];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: ReorderableListView(
    //     children: _list
    //         .map((item) => ListTile(
    //               key: Key("$item"),
    //               title: Text("$item"),
    //               trailing: Icon(Icons.menu),
    //             ))
    //         .toList(),
    //     onReorder: (int start, int current) {
    //       // dragging from top to bottom
    //       if (start < current) {
    //         int end = current - 1;
    //         String startItem = _list[start];
    //         int i = 0;
    //         int local = start;
    //         do {
    //           _list[local] = _list[++local];
    //           i++;
    //         } while (i < end - start);
    //         _list[end] = startItem;
    //       }
    //       // dragging from bottom to top
    //       else if (start > current) {
    //         String startItem = _list[start];
    //         for (int i = start; i > current; i--) {
    //           _list[i] = _list[i - 1];
    //         }
    //         _list[current] = startItem;
    //       }
    //       setState(() {});
    //     },
    //   ),
    // );
    return ReorderableListView(
      children: [
        for (final item in items)
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            color: Colors.lime,
            key: ValueKey(item),
            child: ListTile(
              title: Text('$item'),
              leading: CircleAvatar(
                child: Text('$item'),
              ),
            ),
          )
      ],
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }
}
