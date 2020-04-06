import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key key}) : super(key: key);

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
                  child: Image.asset('assets/images/logo.jpg')),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Forgot Password',
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
                  labelText: "Date of Birth",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 40,
                width: 300,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/new_password');
                  },
                  child: Text(
                    'submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
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
        ));
  }
}
