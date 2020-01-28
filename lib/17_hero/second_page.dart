import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Hero(
              tag: 'hero',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    'https://images.alphacoders.com/720/thumb-1920-720915.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Hero(
              tag: 'hero1',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    'https://images.alphacoders.com/720/thumb-1920-720915.png',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
