import 'package:flutter/material.dart';

class UpdateStudentProfile extends StatefulWidget {
  const UpdateStudentProfile({Key key}) : super(key: key);

  @override
  _UpdateStudentProfileState createState() => _UpdateStudentProfileState();
}

class _UpdateStudentProfileState extends State<UpdateStudentProfile> {
  int grade = 0;
  int division = 0;
  int student = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student profile'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
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
                                  child: Text(' Jon Snow'),
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
                    color: Colors.blueGrey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Name                             '),
                              Container(width: 150, child: TextFormField()),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Class                              '),
                              Container(width: 150, child: TextFormField()),
                              
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Div                                  '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              ),
                          ],),
                          Row(
                            children: <Widget>[
                              Text('DOB                               '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Parent Name                '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Parent Occupation      '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Guardian Name           '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Address                       '),
                              Container(
                                width: 150,
                                child: TextFormField(),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit),),
                      RaisedButton(onPressed: (){},
                      child:Text('save'))
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
