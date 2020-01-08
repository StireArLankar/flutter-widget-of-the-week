import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/1_safe_area/safe_area.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            // AppBar(
            //   title: Text('Menu!'),
            //   automaticallyImplyLeading: false,
            // ),
            Text('Menu!'),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.shop),
                      title: Text('Safe Area'),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SafeAreaScreen.routeName);
                      },
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
