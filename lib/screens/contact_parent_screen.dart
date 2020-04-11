import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class ContactParentScreen extends StatefulWidget {
  const ContactParentScreen({Key key}) : super(key: key);
  
  @override
  _ContactParentScreenState createState() => _ContactParentScreenState();
}

class _ContactParentScreenState extends State<ContactParentScreen> {
  int grade = 0;
  int division=0;
  int student=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
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
                          DropdownMenuItem(child: Text('Class '),value: 0,),
                          DropdownMenuItem(child: Text('Class I'),value:1),
                          DropdownMenuItem(child: Text('Class II'),value:2),
                          DropdownMenuItem(child: Text('Class III'),value: 3),
                          DropdownMenuItem(child: Text('Class IV'),value:4),
                        ], onChanged: (value) {
                          division=0;
                          student=0;
                          setState(() {
                            grade=value;
                          });
                        }))
                  ],
                ),
                grade==0?Container():
                Row(
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
                          DropdownMenuItem(child: Text('Div '),value: 0,),
                          DropdownMenuItem(child: Text('A'),value: 1,),
                          DropdownMenuItem(child: Text('B'),value: 2,),
                          DropdownMenuItem(child: Text('C'),value: 3,),
                          DropdownMenuItem(child: Text('D'),value: 4,),
                        ], onChanged: (value) {
                          student=0;
                          setState(() {
                            division=value;
                          });
                        }))
                  ],
                ),
                 division==0?Container():
                Row(
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
                          DropdownMenuItem(child: Text('Student'),value: 0,),
                          DropdownMenuItem(child: Text('011 Jon Snow'),value: 1,),
                          DropdownMenuItem(child: Text('Arya Stark'),value:2,),
                          DropdownMenuItem(child: Text('Jaimie'),value: 3,),
                          DropdownMenuItem(child: Text('Danaerys'),value: 4,),
                        ], onChanged: (value) {
                          setState(() {
                            student=value;
                          });
                        }))
                  ],
                ),
                student==0?Container():
                Card(
                  color: Colors.lightBlue[100],
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text('Parent info',style: TextStyle(fontSize: 20),),
                        ),
                        Container(
                          child: Text('Parent name'),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                               child: Text('contact'),
                            ),
                          IconButton( onPressed:(){

                          },icon: Icon(Icons.call),)],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              child:Text('Message')
                            ),
                            IconButton(icon: Icon(Icons.chat), onPressed: null)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
             DigiCampusAppbar(
                icon: Icons.close,
                onDrawerTapped: () {
                  Navigator.of(context).pop();
                },
              ),
          ],
        ));
  }
}
