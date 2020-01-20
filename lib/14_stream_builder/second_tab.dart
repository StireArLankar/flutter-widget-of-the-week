import 'package:flutter/material.dart';

import 'model.dart';

class SecondTab extends StatefulWidget {
  static Model model = Model();

  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          StreamBuilder<int>(
            // initialData: 0,
            stream: SecondTab.model.counterUpdates,
            builder: (context, snappShot) {
              String valueAsString = 'NoData';

              if (snappShot != null && snappShot.hasData) {
                valueAsString = snappShot.data.toString();
              }

              return Text(
                valueAsString,
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
          FloatingActionButton(
            onPressed: SecondTab.model.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
