import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.blue, width: 2.0),
          ),
          child: CheckboxListTile(
            onChanged: (val) => setState(() => checked = val),
            value: checked,
            activeColor: Colors.red,
            checkColor: Colors.green,
            secondary: Icon(Icons.beach_access),
            title: Text('Check'),
            subtitle: Text('Sub'),
            dense: true,
          ),
        ),
      ),
    );
  }
}
