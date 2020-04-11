import 'package:flutter/material.dart';
import 'package:teacher_app/components/attendance_table.dart';
import 'package:teacher_app/components/digi_attendance_card.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key key}) : super(key: key);

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
          
              children: <Widget>[
                SizedBox(height: 120,),
                AttendanceCard(),
                AttendanceTable(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'history',
                          style: TextStyle(fontSize: 20),
                        )),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Update', style: TextStyle(fontSize: 20)),
                    )
                  ],
                ),
              ],
            ),
          ),
          DigiCampusAppbar(
                icon: Icons.close,
                onDrawerTapped: () {
                  Navigator.of(context).pop();
                },
              ),
        ],
        
      ),
    );
  }
}
