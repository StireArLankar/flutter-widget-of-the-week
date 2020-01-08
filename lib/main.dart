import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/1_safe_area/safe_area.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';
import 'package:flutter_widget_of_the_week/3_wrap/wrap.dart';
import 'package:flutter_widget_of_the_week/app_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets of the Week!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        SafeAreaScreen.routeName: (ctx) => SafeAreaScreen(),
        ExpandedScreen.routeName: (ctx) => ExpandedScreen(),
        WrapScreen.routeName: (ctx) => WrapScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets of the Week!'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Check the drawer!',
            ),
          ],
        ),
      ),
    );
  }
}
