import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: FittedBox(
          child: Row(
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/placeholder.jpg',
                  fit: BoxFit.cover,
                ),
                width: 600,
                color: Colors.red,
              ),
              const SizedBox(width: 10),
              Container(
                width: 600,
                color: Colors.blue,
                child: Image.network(
                  'https://images.alphacoders.com/720/thumb-1920-720915.png',
                  fit: BoxFit.cover,
                  loadingBuilder: (ctx, child, progress) {
                    return progress == null
                        ? child
                        : LinearProgressIndicator(
                            value: progress.cumulativeBytesLoaded /
                                progress.expectedTotalBytes);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
