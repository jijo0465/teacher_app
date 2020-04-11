import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';
import 'package:teacher_app/components/rewards_table.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key key}) : super(key: key);

  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  int grade = 0;
  int division = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SafeArea(
              child: Container(
                  child: Column(children: <Widget>[
                SizedBox(height: 100),
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
                              DropdownMenuItem(
                                  child: Text('Class I'), value: 1),
                              DropdownMenuItem(
                                  child: Text('Class II'), value: 2),
                              DropdownMenuItem(
                                  child: Text('Class III'), value: 3),
                              DropdownMenuItem(
                                  child: Text('Class IV'), value: 4),
                            ],
                            onChanged: (value) {
                              division = 0;
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
                                    setState(() {
                                      division = value;
                                    });
                                  }))
                        ],
                      ),
                division == 0 ? Container() : Expanded(child: RewardTable())
              ])),
            ),
            DigiCampusAppbar(
              icon: Icons.close,
              onDrawerTapped: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
