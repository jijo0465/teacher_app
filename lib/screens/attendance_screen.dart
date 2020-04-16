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
                SizedBox(
                  height: 120,
                ),
                AttendanceCard(),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))
                  ),
                    height: 400,
                    padding: EdgeInsets.all(12),
                    child: AttendanceTable()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        color: Colors.blue[800],
                        onPressed: () {},
                        child: Text(
                          'History',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      color: Colors.blue[800],
                      onPressed: () {},
                      child: Text('Update',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
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
