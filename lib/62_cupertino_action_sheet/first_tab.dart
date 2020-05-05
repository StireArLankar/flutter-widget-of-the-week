import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

final message = List.generate(30, (_) => 'Some pretty long message').join('\n');

class _FirstTabState extends State<FirstTab> {
  final ctr1 = ScrollController();
  final ctr2 = ScrollController();

  @override
  void dispose() {
    ctr1.dispose();
    ctr2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    ctr1.addListener(() {
      print('scrolling');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('show'),
        onPressed: () async {
          final thing = await showCupertinoModalPopup(
            context: context,
            builder: (ctx) {
              return CupertinoActionSheet(
                title: Text('Title'),
                message: Text(
                  message,
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                actionScrollController: ctr1,
                messageScrollController: ctr2,
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text('Thing 1'),
                    onPressed: () {
                      Navigator.of(ctx).pop('first');
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 2'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 3'),
                    onPressed: () {
                      Navigator.of(ctx).pop('third');
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 4'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 5'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 6'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 7'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 8'),
                    onPressed: () {},
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Thing 9'),
                    onPressed: () {},
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(ctx).pop('cancel');
                  },
                ),
              );
            },
          );

          print(thing);
        },
      ),
    );
  }
}
