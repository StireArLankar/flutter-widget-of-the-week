import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  List<String> items = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'k'];

  @override
  Widget build(BuildContext context) {
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
