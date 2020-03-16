import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class LoginState with ChangeNotifier {
  SharedPreferences _prfs;
  static Status _status = Status.Uninitialized;

  // LoginState.instance() :  _pawAuth = PawAuth(){
  //   auth.onAuthStateChanged.listen(_onAuthStateChanged);
  // }
  LoginState.instance();

  Status get status => _status;

  Future<bool> signIn(String parentId, String password) async {
    _prfs = await SharedPreferences.getInstance();
    _prfs.setBool('loggedIn',true); 
    _status = Status.Authenticated;
    notifyListeners();
    return true;
  }

  Future signOut() async {
    _status = Status.Unauthenticated;
    notifyListeners();
    _prfs = await SharedPreferences.getInstance();
    _prfs.setBool('loggedIn',false);  
  }

   setStatus(Status _statusUpdate) {
    _status = _statusUpdate;
    notifyListeners();
  }
}
