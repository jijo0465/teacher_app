import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:teacher_app/components/digi_appbar.dart';
import 'package:teacher_app/components/digi_menu_card.dart';
import 'package:teacher_app/screens/login_screen.dart';
import 'package:teacher_app/states/login_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginState>(
      builder: (BuildContext context, LoginState value, Widget child) {
        if (value.status == Status.Unauthenticated) {
          return LoginScreen();
        } else {
          return Scaffold(
            body: Container(
              child: Column(
                children: <Widget>[
                  DigiAppbar(),
                  DigiMenuCard(
                      menuIcon: Icons.accessibility_new,
                      title: 'Bus No',
                      subtitle: '15',
                      value: 'Track School Bus'),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
