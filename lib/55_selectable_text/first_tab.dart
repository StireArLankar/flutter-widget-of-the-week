import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText(
        'my selectable text',
        showCursor: true,
        cursorColor: Colors.green,
        cursorRadius: Radius.circular(5),
        cursorWidth: 5,
        style: TextStyle(fontSize: 50),
        toolbarOptions: ToolbarOptions(
          copy: true,
          cut: true,
          paste: true,
          selectAll: true,
        ),
      ),
    );
  }
}
