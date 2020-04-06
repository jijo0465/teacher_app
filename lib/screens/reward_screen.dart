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
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'Select Class',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                                color: Colors.blue,
                                style: BorderStyle.solid,
                                width: 0.80),
                          ),
                          padding: EdgeInsets.only(left: 20),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue,
                                ),
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
                                }),
                          )),
                    )
                  ],
                ),
                SizedBox(height: 10),
                grade == 0
                    ? Container()
                    : Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Select Division',
                                style: TextStyle(fontSize: 18),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                      color: Colors.blue,
                                      style: BorderStyle.solid,
                                      width: 0.80),
                                ),
                                padding: EdgeInsets.only(left: 20),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.blue,
                                      ),
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
                                      }),
                                )),
                          )
                        ],
                      ),
                SizedBox(height: 30),
                division == 0
                    ? Container()
                    : Expanded(
                        child: RewardTable(),
                      ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Text(
                      'submit',
                      style: TextStyle(color: Colors.white),
                    ))
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
