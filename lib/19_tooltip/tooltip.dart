import 'package:flutter/material.dart';
import '../app_drawer.dart';
import '../router.dart';

final tooltipRoute = RouteItem(
  (ctx) => TooltipScreen(),
  TooltipScreen.routeName,
  TooltipScreen.title,
);

class TooltipScreen extends StatelessWidget {
  static const String routeName = 'tooltip';
  static const String title = 'Tooltip';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TooltipScreen.title),
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Tooltip(
            message: 'Hello world',
            textStyle: TextStyle(fontSize: 40, color: Colors.white),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.purpleAccent, Colors.blueAccent],
              ),
              border: Border.all(
                width: 2,
                color: Colors.amber,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Hold press on items',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          Tooltip(
            message: 'NEPU',
            textStyle: TextStyle(fontSize: 20),
            padding: EdgeInsets.all(10),
            preferBelow: false,
            verticalOffset: 100,
            child: Image.asset(
              'assets/images/placeholder.jpg',
              height: 300,
            ),
          ),
          IconButton(
            icon: Icon(Icons.high_quality),
            tooltip: 'High quality',
            onPressed: () => null,
            iconSize: 100,
          )
        ],
      ),
    );
  }
}
