import 'package:flutter/material.dart';
import 'first_page.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (ctx) => FirstPage()),
        ),
        child: Hero(
          tag: 'nepu',
          child: FadeInImage.assetNetwork(
            fadeOutDuration: const Duration(seconds: 1),
            height: 200,
            placeholder: 'assets/images/placeholder.jpg',
            image: 'https://images.alphacoders.com/720/thumb-1920-720915.png',
          ),
        ),
      ),
    );
  }
}
