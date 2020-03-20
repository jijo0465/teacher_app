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

  Future<Teacher> signIn(String parentId, String password) async {
    _prfs = await SharedPreferences.getInstance();
    Teacher teacher;
    String url = 'http://10.0.2.2:8080/digicampus/teacher_auth';
    Map<String, String> headers = {"Content-type": "application/json"};
    String data = '{"parentId": "$parentId", "password": "$password"}';
    await http.post(url, headers: headers, body: data).then((response) {
      print(response.body);
      if (response.body != null) {
        final body = json.decode(response.body);
        if(body['response']=='ok'){
          _prfs.setBool('loggedIn', true);
          teacher = Teacher(body['parent_id'],body['name']);
          _status = Status.Authenticated;
          notifyListeners();
        }
        
      }
    }).catchError((error) => print(error));

    return teacher;
  }

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
