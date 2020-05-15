import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show snackbar'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Some message'),
              backgroundColor: Colors.teal[50],
              behavior: SnackBarBehavior.fixed,
              elevation: 10,
              duration: const Duration(seconds: 5),
              onVisible: () {
                _showMyDialog(context);
              },
              action: SnackBarAction(
                label: 'Click me',
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Another one'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
              ),
              shape: Border(
                top: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 2.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Something'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
