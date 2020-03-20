import 'package:flutter/material.dart';

class AttendanceTable extends StatefulWidget {
  const AttendanceTable({Key key}) : super(key: key);

  @override
  _AttendanceTableState createState() => _AttendanceTableState();
}

class _AttendanceTableState extends State<AttendanceTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Container(
        height: 400,
        padding: EdgeInsets.all(12),
        color: Colors.blue[200],
          child: DataTable(
            columns: [
        DataColumn(label: Text('Roll No')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Attendance'))
      ], rows: [
        DataRow(cells: [
          DataCell(Text('47')),
          DataCell(Text('Monk Paru')),
          DataCell(Checkbox(
            onChanged: (bool value) {},
            activeColor: Colors.green,
            value: true,
          ),
          showEditIcon: true
          ),
        ]),
        DataRow(cells: [
          DataCell(Text('47')),
          DataCell(Text('Monk Paru')),
          DataCell(Checkbox(
            onChanged: (bool value) {},
            activeColor: Colors.green,
            value: true,
          ),showEditIcon: true),
          
          
        ]),
        DataRow(cells: [
          DataCell(Text('47')),
          DataCell(Text('Monk Paru')),
          DataCell(Checkbox(
            onChanged: (bool value) {},
            activeColor: Colors.green,
            value: true,
          ),
          showEditIcon: true),
          
        ]),
        DataRow(cells: [
          DataCell(Text('47')),
          DataCell(Text('Monk Paru')),
          DataCell(Checkbox(
            onChanged: (bool value) {},
            activeColor: Colors.green,
            value: true,
          ),showEditIcon: true),
          
        ]),
      ])),
    );
  }
}
