import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:teacher_app/models/teacher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class LoginState with ChangeNotifier {
  SharedPreferences _prfs;
  static Status _status = Status.Uninitialized;

  // LoginState.instance() :  _pawAuth = PawAuth(){
  //   auth.onAuthStateChanged.listen(_onAuthStateChanged);
  // }
  LoginState.instance();

  Status get status => _status;

  Future signOut() async {
    _status = Status.Unauthenticated;
    notifyListeners();
    _prfs = await SharedPreferences.getInstance();
    _prfs.setBool('loggedIn', false);
  }

  setStatus(Status _statusUpdate) {
    _status = _statusUpdate;
    notifyListeners();
  }
}
