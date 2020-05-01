import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildRow(ColorFilter.mode(
            Colors.green,
            BlendMode.colorDodge,
          )),
          buildRow(ColorFilter.mode(
            Colors.green,
            BlendMode.saturation,
          )),
          buildRow(ColorFilter.mode(
            Colors.green,
            BlendMode.colorBurn,
          )),
          buildRow(ColorFilter.mode(
            Colors.green,
            BlendMode.multiply,
          )),
        ],
      ),
    );
  }

  Container buildRow(ColorFilter colorFilter) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FittedBox(
        child: Row(
          children: <Widget>[
            Image.asset('assets/images/placeholder.jpg'),
            const SizedBox(
              width: 10,
            ),
            ColorFiltered(
              colorFilter: colorFilter,
              child: Image.asset('assets/images/placeholder.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
