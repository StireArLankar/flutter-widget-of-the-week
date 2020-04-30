import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DraggableScrollableSheet(
        builder: (ctx, controller) {
          return Container(
            height: 500,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.teal,
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.purple,
                height: 1000,
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/placeholder.jpg'),
              ),
            ),
          );
        },
        expand: false,
        initialChildSize: 0.3,
        minChildSize: 0.1,
        maxChildSize: 0.5,
      ),
    );
  }
}
