import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/images/placeholder.jpg'),
              ),
            ),
            ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                padding: EdgeInsets.all(5),
                child: FadeInImage.assetNetwork(
                  fadeOutDuration: const Duration(seconds: 3),
                  height: 200,
                  placeholder: 'assets/images/placeholder.jpg',
                  image:
                      'https://images.alphacoders.com/720/thumb-1920-720915.png',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: FadeInImage.assetNetwork(
                fadeOutDuration: const Duration(seconds: 3),
                height: 200,
                placeholder: 'assets/images/placeholder.jpg',
                image:
                    'https://images.alphacoders.com/720/thumb-1920-720915.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
