import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildContainer(const FractionColumnWidth(0.25)),
            buildContainer(const FixedColumnWidth(30)),
            buildContainer(const FlexColumnWidth(1)),
            buildContainer(const IntrinsicColumnWidth(flex: 2)),
            buildContainer(const IntrinsicColumnWidth(flex: 0.5)),
            buildContainer(const IntrinsicColumnWidth(flex: 1)),
            buildContainer(const IntrinsicColumnWidth()),
            buildContainer(const MinColumnWidth(
              const FixedColumnWidth(20.0),
              const FractionColumnWidth(10),
            )),
            buildContainer(const MaxColumnWidth(
              const FixedColumnWidth(40.0),
              const FractionColumnWidth(0.1),
            )),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(TableColumnWidth defaultColumnWidth) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: buildTable(defaultColumnWidth),
        ),
        Positioned(
          child: Text(
            '$defaultColumnWidth',
            textAlign: TextAlign.center,
          ),
          bottom: 0,
          left: 0,
          right: 0,
        )
      ],
    );
  }

  Table buildTable(
    TableColumnWidth defaultColumnWidth,
  ) {
    return Table(
      border: TableBorder.all(color: Colors.black, width: 1),
      defaultColumnWidth: defaultColumnWidth,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: BoxDecoration(
            color: Colors.black12,
          ),
          children: [
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.bottom,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
            ),
            Container(
              width: 25,
              height: 100,
              color: Colors.amber,
              child: Text('w: 25, h: 100'),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
          ],
        ),
      ],
    );
  }
}
