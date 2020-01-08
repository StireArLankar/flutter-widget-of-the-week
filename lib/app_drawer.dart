import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/1_safe_area/safe_area.dart';
import 'package:flutter_widget_of_the_week/2_expanded/expanded.dart';
import 'package:flutter_widget_of_the_week/3_wrap/wrap.dart';

class AppDrawer extends StatelessWidget {
  List<Widget> buildLink(BuildContext context, String title, String route) {
    return [
      ListTile(
        leading: const Icon(Icons.panorama_fish_eye),
        title: Text(title),
        onTap: () {
          Navigator.of(context).pushReplacementNamed(route);
        },
      ),
      Divider(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
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
                    ...buildLink(
                        context, 'Safe Area', SafeAreaScreen.routeName),
                    ...buildLink(context, 'Expanded', ExpandedScreen.routeName),
                    ...buildLink(context, 'Wrap', WrapScreen.routeName),
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
