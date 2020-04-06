import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  

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
    final TextStyle textStyle = TextStyle(
        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columnSpacing: 25, columns: [
        DataColumn(
            label: Text(
          'Roll No',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.white),
        )),
        DataColumn(
            label: Text('Name',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white))),
        DataColumn(
            label: Container(
              padding: EdgeInsets.only(left:25),
              child: Text('Attendance',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white)),
            ))
      ], rows: [
        DataRow(cells: [
          DataCell(Text('47', style: textStyle)),
          DataCell(Text('Monk Paru', style: textStyle)),
          DataCell(
            Container(
              
              child: Transform.scale(
                            child: LiteRollingSwitch(
                    value: true,
                    textOn: 'Present',
                    textOff: 'Absent',
                    textSize: 18,
                    colorOn: Colors.green,
                    colorOff: Colors.red,
                    iconOn: Icons.thumb_up,
                    iconOff: Icons.thumb_down,
                    onChanged: (bool state) {
                      print('turned ${(state) ? 'on' : 'off'}');
                    },
                  ), scale: 0.5,
              ),
            ),
              ),
        ]),
        DataRow(cells: [
          DataCell(Text('47', style: textStyle)),
          DataCell(Text('Monk Paru', style: textStyle)),
          DataCell(
              Transform.scale(
                              child: LiteRollingSwitch(
                    value: true,
                    textOn: 'Present',
                    textOff: 'Absent',
                    textSize: 18,
                    colorOn: Colors.green,
                    colorOff: Colors.red,
                    iconOn: Icons.thumb_up,
                    iconOff: Icons.thumb_down,
                    onChanged: (bool state) {
                      print('turned ${(state) ? 'on' : 'off'}');
                    },
                  ), scale: 0.5,
              ),
             ),
        ]),
        DataRow(cells: [
          DataCell(Text('47', style: textStyle)),
          DataCell(Text('Monk Paru', style: textStyle)),
          DataCell(
              Transform.scale(
                              child: LiteRollingSwitch(
                    value: true,
                    textOn: 'Present',
                    textOff: 'Absent',
                    textSize: 18,
                    colorOn: Colors.green,
                    colorOff: Colors.red,
                    iconOn: Icons.thumb_up,
                    iconOff: Icons.thumb_down,
                    onChanged: (bool state) {
                      print('turned ${(state) ? 'on' : 'off'}');
                    },
                  ), scale: 0.5,
              ),
              ),
        ]),
        DataRow(
          cells: [
          DataCell(Text('47', style: textStyle)),
          DataCell(Text('Monk Paru', style: textStyle)),
          DataCell(
              Transform.scale(
                              child: LiteRollingSwitch(
                    value: true,
                    textOn: 'Present',
                    textOff: 'Absent',
                    textSize: 18,
                    colorOn: Colors.green,
                    colorOff: Colors.red,
                    iconOn: Icons.thumb_up,
                    iconOff: Icons.thumb_down,
                    onChanged: (bool state) {
                      print('turned ${(state) ? 'on' : 'off'}');
                    },
                  ), scale: 0.5,
                
              ),
              ),
        ]),
      ]),
    );
  }
}
