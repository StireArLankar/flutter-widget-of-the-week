import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ...buildOuter(
              [
                Positioned(child: _buildInner(), bottom: 5, left: 5),
                Positioned(child: _buildInner(), top: 5, left: 5),
                Positioned(child: _buildInner(), bottom: 5, top: 5, right: 5),
              ],
            ),
            ...buildOuter(
              [
                Positioned.fill(child: _buildInner()),
              ],
            ),
            ...buildOuter(
              [
                Positioned.fromRect(
                  child: _buildInner(),
                  rect: Rect.fromPoints(Offset(10, 10), Offset(50, 50)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildOuter(List<Widget> children) {
    return [
      Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Stack(
          children: children,
        ),
      ),
      SizedBox(
        height: 10,
      )
    ];
  }

  Container _buildInner() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}
