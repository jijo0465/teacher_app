import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacher_app/states/login_state.dart';
import 'package:teacher_app/models/teacher.dart';
import 'package:teacher_app/services/digi_auth.dart';
import 'package:teacher_app/states/teacher_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _id;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Login Screen'),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Paren Id',
                ),
                onChanged: (value) => _id = value,
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: (value) {
                  _password = value;
                },
              ),
            ),
            Consumer<TeacherState>(
              builder:
                  (BuildContext context, TeacherState teacherState, Widget child) {
                return Consumer<LoginState>(
                  builder: (context, value, child) {
                    return RaisedButton(
                        child: Text('Log in'),
                        onPressed: () async {
                          value.setStatus(Status.Authenticating);

                          Teacher teacher =
                              await DigiAuth().signIn(_id, _password);
                          if (teacher != null) {
                            teacherState.setTeacher(teacher);
                            value.setStatus(Status.Authenticated);
                          }
                        });
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
