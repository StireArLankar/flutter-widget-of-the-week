import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Placeholder(
          fallbackHeight: 100,
        );
      },
      itemCount: 2,
    );
  }
}
