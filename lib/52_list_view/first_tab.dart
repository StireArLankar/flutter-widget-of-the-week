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
            height: 400,
            margin: EdgeInsets.symmetric(vertical: 5),
            color: Colors.black38,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Dismissible(
                  key: ValueKey(items[index]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.indigo,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('$index'),
                          backgroundColor: Colors.cyan,
                        ),
                        title: Text('Some random title ${items[index]}'),
                      ),
                    ),
                  ),
                  background: Container(
                    child: FittedBox(
                      child: buildNepu(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  direction: DismissDirection.horizontal,
                  secondaryBackground: Container(
                    color: Colors.red,
                    child: Icon(Icons.cancel),
                  ),
                  onDismissed: (dir) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                );
              },
              itemCount: items.length,
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
