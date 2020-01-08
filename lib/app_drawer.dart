import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/1_safe_area/safe_area.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';

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
            SizedBox(height: 5),
            Text(
              'Menu!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.panorama_fish_eye),
                      title: Text('Safe Area'),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SafeAreaScreen.routeName);
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.panorama_fish_eye),
                      title: Text('Expanded'),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(ExpandedScreen.routeName);
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
