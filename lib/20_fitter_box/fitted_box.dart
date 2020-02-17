import 'package:flutter/material.dart';
import '../app_drawer.dart';
import '../router.dart';

final fittedBoxRoute = RouteItem(
  (ctx) => FittedBoxScreen(),
  FittedBoxScreen.routeName,
  FittedBoxScreen.title,
);

class FittedBoxScreen extends StatelessWidget {
  static const String routeName = 'fitted-box';
  static const String title = 'Fitted Box';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FittedBoxScreen.title),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildContainer(
              FittedBox(
                child: buildNepu('default'),
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('fill'),
                fit: BoxFit.fill,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('contain'),
                fit: BoxFit.contain,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('contain'),
                fit: BoxFit.contain,
                alignment: Alignment.centerLeft,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('cover'),
                fit: BoxFit.cover,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('scaleDown'),
                fit: BoxFit.scaleDown,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('fitWidth'),
                fit: BoxFit.fitWidth,
              ),
            ),
            buildContainer(
              FittedBox(
                child: buildNepu('fitHeight'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNepu(String text) {
    return Stack(
      children: <Widget>[
        Image.asset('assets/images/placeholder.jpg', height: 300),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(6),
              color: Colors.black45,
              child: Text(
                text,
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container buildContainer(Widget widget) {
    return Container(
      width: 300,
      height: 150,
      child: widget,
    );
  }
}
