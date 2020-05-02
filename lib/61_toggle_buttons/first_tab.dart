import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  List<bool> _isSelected1 = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildRow(ToggleButtons(
            children: <Widget>[
              Icon(Icons.today),
              Icon(Icons.toll),
              Icon(Icons.train),
              Icon(Icons.tune),
            ],
            isSelected: _isSelected1,
            borderColor: Colors.red,
            borderRadius: BorderRadius.circular(10),
            borderWidth: 2.0,
            disabledColor: Colors.grey[300],
          )),
          buildRow(ToggleButtons(
            children: <Widget>[
              Icon(Icons.today),
              Icon(Icons.toll),
              Icon(Icons.train),
              Icon(Icons.tune),
            ],
            isSelected: _isSelected1,
            borderColor: Colors.red,
            borderRadius: BorderRadius.circular(10),
            borderWidth: 2.0,
            color: Colors.amber,
            fillColor: Colors.teal,
            splashColor: Colors.purple,
            selectedColor: Colors.black,
            selectedBorderColor: Colors.green,
            highlightColor: Colors.deepPurple,
            onPressed: (index) {
              setState(() {
                _isSelected1[index] = !_isSelected1[index];
              });
            },
          )),
        ],
      ),
    );
  }

  Container buildRow(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: child,
    );
  }
}
