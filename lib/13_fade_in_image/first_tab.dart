import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(5),
            child: FadeInImage.assetNetwork(
              fadeInDuration: const Duration(seconds: 1),
              height: 200,
              placeholder: 'assets/images/placeholder.jpg',
              image: 'https://images.alphacoders.com/720/thumb-1920-720915.png',
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: FadeInImage.assetNetwork(
              fadeOutDuration: const Duration(seconds: 3),
              height: 200,
              placeholder: 'assets/images/placeholder.jpg',
              image: 'https://images.alphacoders.com/720/thumb-1920-720915.png',
            ),
          ),
        ],
      ),
    );
  }
}
