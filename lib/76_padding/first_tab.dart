import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        child: Container(
          color: Colors.amber,
          width: 20,
          height: 20,
        ),
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
