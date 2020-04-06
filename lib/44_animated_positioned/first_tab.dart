import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => setState(() => check = !check),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Text(
                  'Hi',
                  style: TextStyle(fontSize: 30),
                ),
                bottom: 50,
                right: 100,
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 700),
                bottom: check ? 90 : 50,
                right: 50,
                curve: const ElasticInOutCurve(0.8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  width: 200,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
