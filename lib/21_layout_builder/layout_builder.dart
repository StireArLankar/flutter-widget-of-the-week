import 'package:flutter/material.dart';
import '../app_drawer.dart';
import '../router.dart';

final layoutBuilderRoute = RouteItem(
  (ctx) => LayoutBuilderScreen(),
  LayoutBuilderScreen.routeName,
  LayoutBuilderScreen.title,
);

class LayoutBuilderScreen extends StatelessWidget {
  static const String routeName = 'layout-builder';
  static const String title = 'Layout Builder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LayoutBuilderScreen.title),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Container(
          width: 250,
          child: LayoutBuilder(
            builder: (ctx, constrains) {
              return Container(
                color: Colors.lightGreen,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('min-width: ${constrains.minWidth}'),
                    Text('max-width: ${constrains.maxWidth}'),
                    Text('has tight width: ${constrains.hasTightWidth}'),
                    Text('has tight height: ${constrains.hasTightHeight}'),
                    Text('constrains: $constrains'),
                    Text('constrains.flipped: ${constrains.flipped}'),
                    Text('context widget: ${ctx.widget}'),
                    // It's context is different from scaffold,
                    // so Scaffold.of(context) is working here (for drawer manipulation for example)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
