import 'dart:async';

import 'package:flutter/material.dart';

import 'model.dart';

class FirstTab extends StatefulWidget {
  static Model model = Model();

  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  int _counter = 0;
  StreamSubscription streamSubscription;

  @override
  void initState() {
    streamSubscription = FirstTab.model.counterUpdates.listen(
      (newVal) => setState(
        () {
          _counter = newVal;
        },
      ),
    );

    super.initState();
  }

  // Although this state will not get destroyed as long as the App is running its good
  // style to always free subscriptions
  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          FloatingActionButton(
            onPressed: FirstTab.model.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
