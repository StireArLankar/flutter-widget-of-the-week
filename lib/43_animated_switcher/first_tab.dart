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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Container(
              child: AnimatedSwitcher(
                child: Container(
                  color: check ? Colors.red : Colors.blue,
                  key: ValueKey(check ? 1 : 2),
                  width: check ? 100 : 200,
                  height: check ? 200 : 100,
                ),
                duration: const Duration(seconds: 1),
              ),
            ),
            onTap: () {
              setState(() {
                check = !check;
              });
            },
          ),
        ],
      ),
    );
  }
}
