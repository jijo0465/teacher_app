import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class UpdateFromParents extends StatelessWidget {
  const UpdateFromParents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 120),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Student Remarks',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 30,
                        child: Text('Remarks: ............'),
                      ),
                      SizedBox(height: 50),
                      Container(
                        width: 250,
                        child: Column(
                          children: <Widget>[
                            Divider(
                              color: Colors.grey[500],
                              thickness: 1.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  '10/06/2020',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'V A',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'Parent of Sansa',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 120,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text('Remarks: ............'),
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: 250,
                        child: Column(
                          children: <Widget>[
                            Divider(
                              color: Colors.grey[500],
                              thickness: 1.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  '11/06/2020',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'IX C',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'Parent of Ramsey',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 120,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 2,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text('Remarks: ............'),
                      ),
                      SizedBox(height: 60),
                      Container(
                        width: 250,
                        child: Column(
                          children: <Widget>[
                            Divider(
                              color: Colors.grey[500],
                              thickness: 1.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  '11/06/2020',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'VII A',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                                Container(
                                    child: Text(
                                  'Parent of Theon',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
