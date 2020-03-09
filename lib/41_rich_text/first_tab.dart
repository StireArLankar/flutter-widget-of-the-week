import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          style: TextStyle(color: Colors.red, fontSize: 30),
          children: [
            TextSpan(text: 'Test ', style: TextStyle(color: Colors.blue)),
            TextSpan(text: 'some'),
            TextSpan(text: ' asd ', style: TextStyle(color: Colors.black)),
            TextSpan(text: 'asd asd asd asda sdas dasd asd asd asd')
          ],
        ),
      ),
    );
  }
}
