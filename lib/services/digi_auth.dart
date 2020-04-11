import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:teacher_app/models/teacher.dart';
import 'package:http/http.dart' as http;

class DigiAuth{
  SharedPreferences _prfs;
  Future<Teacher> signIn(String teacherId, String password) async {
    _prfs = await SharedPreferences.getInstance();
    Teacher teacher;
    String url = 'http://10.0.2.2:8080/digicampus/auth_api/auth_parent';
    Map<String, String> headers = {"Content-type": "application/json"};
    Map<String, dynamic> params = {"id":teacherId,"password":password};
    String data = jsonEncode(params);
    await http.post(url, headers: headers, body: data).then((response) {
      print(response.body);
      if (response.body != null) {
        final body = json.decode(response.body);
        // if(body['response']=='ok'){
          _prfs.setBool('loggedIn', true);
          teacher = Teacher(body['parent_id'],body['name']);
        // }
        
      }
    }).catchError((error) => print(error));

    return teacher;
  }
}