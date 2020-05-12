import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              LayoutBuilder(
                builder: (ctx, _) {
                  return RaisedButton(
                    child: Text('Close'),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (ctx, _) {
            return RaisedButton(
              child: Text('Press me'),
              onPressed: () {
                Scaffold.of(ctx).openEndDrawer();
              },
            );
          },
        ),
      ),
    );
  }
}
