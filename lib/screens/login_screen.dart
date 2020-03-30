import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacher_app/states/login_state.dart';
import 'package:teacher_app/models/teacher.dart';

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
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Container(
              height: 100,
              width: 100,
              child: Card(
                elevation: 1,
                color: Colors.white,
                child: Image.asset('assets/images/logo.jpg')
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Teacher Id",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: Container(
                  child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'forgot password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.blue),
                      ))),
            ),
            Container(
                width: 300,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  color: Colors.pink[200],
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)),
                )),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Container(
                  child: Row(
                children: <Widget>[
                  Text('don\'t have an account?'),
                  Container(
                      child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.blue),
                          )))
                ],
              )),
            )
          ],
        )
        // Center(
        //   child: Column(
        //     children: <Widget>[
        //       Container(
        //         child: Text('Login Screen'),
        //       ),
        //       Container(
        //         padding: EdgeInsets.all(12),
        //         child: TextFormField(
        //           textInputAction: TextInputAction.next,
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //             labelText: 'Paren Id',
        //           ),
        //           onChanged: (value) => _id = value,
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.all(12),
        //         child: TextFormField(
        //           textInputAction: TextInputAction.next,
        //           decoration: InputDecoration(
        //             labelText: 'Password',
        //           ),
        //           onChanged: (value) {
        //             _password = value;
        //           },
        //         ),
        //       ),
        //       Consumer<LoginState>(
        //         builder: (context, value, child) {
        //           return RaisedButton(
        //               child: Text('Log in'),
        //               onPressed: () async{
        //                 Teacher teacher=await value.signIn(_id, _password);
        //               });
        //         },
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
