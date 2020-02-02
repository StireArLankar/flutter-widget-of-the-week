import 'dart:ui';

import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Image.asset('assets/images/placeholder.jpg', height: 100),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              child: Image.asset('assets/images/placeholder.jpg', height: 100),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    color: Colors.green,
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned.fill(
                  // The filter will be applied to all the area within its parent or ancestor widget's clip.
                  // If there's no clip, the filter will be applied to the full screen.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      width: 100,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          color: Colors.black,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: double.infinity,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  child: Image.asset(
                    'assets/images/placeholder.jpg',
                    height: 100,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Text('0' * 10000),
                Center(
                  child: ClipRect(
                    // <-- clips to the 200x200 [Container] below
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 200.0,
                        child: Text('Hello World'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
