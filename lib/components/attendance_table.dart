import 'package:flutter/material.dart';

class AttendanceTable extends StatefulWidget {
  const AttendanceTable({Key key}) : super(key: key);

  @override
  _AttendanceTableState createState() => _AttendanceTableState();
}

class _AttendanceTableState extends State<AttendanceTable> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          height: 400,
          padding: EdgeInsets.all(12),
          color: Colors.blue[200],
          child: DataTable(columns: [
            DataColumn(label: Text('Roll No')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Attendance'))
          ], rows: [
            DataRow(cells: [
              DataCell(Text('47')),
              DataCell(Text('Monk Paru')),
              DataCell(
                  Checkbox(
                     activeColor: Colors.green,
                    value: val1,
                    onChanged: (value) {
                      setState(() {
                        val1 = value;
                      });
                    },
                  ),
                  showEditIcon: true),
            ]),
            DataRow(cells: [
              DataCell(Text('47')),
              DataCell(Text('Monk Paru')),
              DataCell(
                  Checkbox(
                    activeColor: Colors.green,
                    value: val2,
                    onChanged: (value) {
                      setState(() {
                        val2 = value;
                      });
                    },
                  ),
                  showEditIcon: true),
            ]),
            DataRow(cells: [
              DataCell(Text('47')),
              DataCell(Text('Monk Paru')),
              DataCell(
                  Checkbox(
                     activeColor: Colors.green,
                    value: val3,
                    onChanged: (value) {
                      setState(() {
                        val3 = value;
                      });
                    },
                  ),
                  showEditIcon: true),
            ]),
            DataRow(cells: [
              DataCell(Text('47')),
              DataCell(Text('Monk Paru')),
              DataCell(
                  Checkbox(
                     activeColor: Colors.green,
                    value: val4,
                    onChanged: (value) {
                      setState(() {
                        val4 = value;
                      });
                    },
                  ),
                  showEditIcon: true),
            ]),
          ])),
    );
  }
}
