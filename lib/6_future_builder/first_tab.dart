import 'dart:async';

import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  Future<dynamic> timer;
  int counter = 0;
  bool loading = false;

  void startTimer() {
    setState(() {
      if (loading) {
        return;
      }

      loading = true;
      timer = Future.delayed(Duration(seconds: 1), () {
        setState(() {
          counter++;
          loading = false;
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: startTimer,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            FutureBuilder(
              future: timer,
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    'Loaded!',
                    style: TextStyle(fontSize: 30),
                  );
                } else {
                  return Text(
                    'Loading...',
                    style: TextStyle(fontSize: 30),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
