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
              Center(child: _buildInner()),
            ),
            ...buildOuter(
              Align(
                child: _buildInner(),
                alignment: Alignment.bottomRight,
              ),
            ),
            ...buildOuter(
              Align(
                child: _buildInner(),
                alignment: Alignment(-0.8, -0.1),
              ),
            ),
            ...buildOuter(
              Stack(
                children: <Widget>[
                  Align(
                    child: _buildInner(),
                    alignment: Alignment(-0.8, -0.1),
                  ),
                  Align(
                    child: _buildInner(),
                    alignment: Alignment(0.8, 0.1),
                  ),
                  Align(
                    child: _buildInner(),
                    alignment: Alignment(0, 1),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildOuter(Widget child) {
    return [
      Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: child,
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
