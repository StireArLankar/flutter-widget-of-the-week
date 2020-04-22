import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            'Students',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        DataTable(
          columns: [
            DataColumn(label: Text('RollNo'), numeric: true),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Class')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('1')),
                DataCell(Text('Arya'), showEditIcon: true),
                DataCell(Text('6')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('12')),
                DataCell(Text('John')),
                DataCell(Text('9')),
              ],
              selected: true,
            ),
            DataRow(
              cells: [
                DataCell(Text('42')),
                DataCell(Text('Tony'), placeholder: true),
                DataCell(Text('8')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
