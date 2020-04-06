import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

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
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'Select Class',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:32),
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
                                  student = 0;
                                  setState(() {
                                    grade = value;
                                  });
                                }),
                          )),
                    )
                  ],
                ),
                SizedBox(height:10),
                grade == 0
                    ? Container()
                    : Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Select Division',
                                style: TextStyle(fontSize: 20),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left:12),
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
                                      }),
                                )),
                          )
                        ],
                      ),
                      SizedBox(height:10),
                division == 0
                    ? Container()
                    : Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                'Select Student',
                                style: TextStyle(fontSize: 20),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left:14),
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
                                      }),
                                )),
                          )
                        ],
                      ),
                      SizedBox(height:10),
                student == 0
                    ? Container()
                    : Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        elevation: 4,
                        color: Colors.indigo[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            alignment: Alignment.center,
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/child.jpg'))),
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 45, 0, 0),
                                      child: IconButton(
                                          color: Colors.blue[100],
                                          icon: Icon(Icons.camera_alt),
                                          onPressed: () {}))
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Text(
                                  'ID No: 123456',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Name                        ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(width: 200, child: TextFormField()),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Class                         ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(width: 200, child: TextFormField()),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Div                             ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
                                    child: TextFormField(),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'DOB                          ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
                                    child: TextFormField(),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Parent Name          ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
                                    child: TextFormField(),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Parent Occupation',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
                                    child: TextFormField(),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Guardian Name     ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
                                    child: TextFormField(),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Address                 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                  Container(
                                    width: 200,
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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    ),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        color: Colors.blue[800],
                        onPressed: () {},
                        child: Text(
                          'save',
                          style: TextStyle(color: Colors.white),
                        ))
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
