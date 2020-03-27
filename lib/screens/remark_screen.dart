import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class RemarkScreen extends StatefulWidget {
  const RemarkScreen({Key key}) : super(key: key);

  @override
  _RemarkScreenState createState() => _RemarkScreenState();
}

class _RemarkScreenState extends State<RemarkScreen> {
  int grade = 0;
  int division = 0;
  int student = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
                  child: Column(
              children: <Widget>[
                SizedBox(height:100),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        'Select Class',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 40),
                        child: DropdownButton(
                            value: grade,
                            items: [
                              DropdownMenuItem(
                                child: Text('Class '),
                                value: 0,
                              ),
                              DropdownMenuItem(child: Text('Class I'), value: 1),
                              DropdownMenuItem(child: Text('Class II'), value: 2),
                              DropdownMenuItem(child: Text('Class III'), value: 3),
                              DropdownMenuItem(child: Text('Class IV'), value: 4),
                            ],
                            onChanged: (value) {
                              division = 0;
                              student = 0;
                              setState(() {
                                grade = value;
                              });
                            }))
                  ],
                ),
                grade == 0
                    ? Container()
                    : Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                'Select Division',
                                style: TextStyle(fontSize: 20),
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 40),
                              child: DropdownButton(
                                  value: division,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Div '),
                                      value: 0,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('A'),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('B'),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('C'),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('D'),
                                      value: 4,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    student = 0;
                                    setState(() {
                                      division = value;
                                    });
                                  }))
                        ],
                      ),
                division == 0
                    ? Container()
                    : Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                'Select Student',
                                style: TextStyle(fontSize: 20),
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 40),
                              child: DropdownButton(
                                  value: student,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text('Student'),
                                      value: 0,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('011 Jon Snow'),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Arya Stark'),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Jaimie'),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(
                                      child: Text('Danaerys'),
                                      value: 4,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      student = value;
                                    });
                                  }))
                        ],
                      ),
                student == 0
                    ? Container()
                    : Card(
                        elevation: 12,
                        color: Colors.white54,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Remarks',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration:
                                      InputDecoration(hintText: 'write your remark'),
                                ),
                              ),
                              Container(
                                child: RaisedButton(
                                    elevation: 10,
                                    onPressed: () {}, child: Text('submit')),
                              ),
                            ],
                          ),
                        ),
                      )
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
