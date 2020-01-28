import 'package:flutter/material.dart';
import 'second_page.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              FadeRoute(
                page: SecondPage(),
                transitionDuration: Duration(seconds: 4),
              ),
            ),
            child: Hero(
              tag: 'hero',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Image.network(
                    'https://images.alphacoders.com/720/thumb-1920-720915.png',
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(500),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                'https://images.alphacoders.com/720/thumb-1920-720915.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Duration transitionDuration;
  final Widget page;
  FadeRoute({this.page, this.transitionDuration})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
