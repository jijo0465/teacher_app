import 'package:flutter/material.dart';
import 'package:teacher_app/components/attendance_table.dart';
import 'package:teacher_app/components/digi_attendance_card.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Attendance'),
        ),
        body: Column(
          children: <Widget>[
            AttendanceCard(),
            
                AttendanceTable(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(onPressed: (){

                    }, child: Text('history',style: TextStyle(fontSize: 20),)
                    ),
                    RaisedButton(onPressed: (){

                },child: Text('Update',style: TextStyle(fontSize: 20)),)
                  ],
                ),
                
          ],
        ));
  }
}
