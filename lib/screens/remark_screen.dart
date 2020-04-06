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
                SizedBox(height: 120),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          'Select Class',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
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
                                    student = 0;
                                    setState(() {
                                      grade = value;
                                    });
                                  }),
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                grade == 0
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  'Select Division',
                                  style: TextStyle(fontSize: 18),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
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
                                          student = 0;
                                          setState(() {
                                            division = value;
                                          });
                                        }),
                                  )),
                            )
                          ],
                        ),
                      ),
                SizedBox(height: 10),
                division == 0
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  'Select Student',
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
                                        value: student,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text('Student'),
                                            value: 0,
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Jon Snow'),
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
                      ),
                student == 0
                    ? Container()
                    : Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            height: 150,
                            width: 280,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: TextFormField(
                                    minLines: 3,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        // contentPadding: new EdgeInsets.symmetric(
                                        // vertical: 50.0, horizontal: 10.0),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                                color: Colors.blue))),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                      color: Colors.white,
                                      height: 30,
                                      width: 100,
                                      alignment: Alignment.center,
                                      // padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                      child: Text(
                                        'Remarks',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0)),
                              color: Colors.blue[800],
                              onPressed: () {},
                              child: Text(
                                'submit',
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
