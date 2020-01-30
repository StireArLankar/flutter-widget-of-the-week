import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/app_drawer.dart';

class AbsorbPointerScreen extends StatelessWidget {
  static const String routeName = 'absorb-pointer';
  static const String title = 'Absorb Pointer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AbsorbPointerScreen.title),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text('Can click me!'),
              onPressed: () {},
            ),
            AbsorbPointer(
              child: RaisedButton(
                child: Text('But cant click me!'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
