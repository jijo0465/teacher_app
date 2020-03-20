import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(fontSize: 22,fontWeight: FontWeight.w600);
    return Container(
      child:Card(
                margin: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.lightBlueAccent,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text('Total Strength',style: textStyle,),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(': 45',style: textStyle))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left:12),
                              child: Text('Total Present',style: textStyle),
                            ),
                            Container(child: Text(': 40',style: textStyle))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left:12),
                              child: Text('Total Absent',style: textStyle),
                            ),
                            Container(child: Text(': 05',style: textStyle))
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                )));
  }
}