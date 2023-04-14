import 'package:hive/hive.dart';

class AuthService {
  static final AuthService _singleton = AuthService._internal();

  factory AuthService() {
    return _singleton;
  }

  AuthService._internal();

  login({String? userName, String? password}){
    var box = Hive.box("storage");
    if(box.containsKey("isLogin")) {
      return true;
    } else{
      if(userName!=null){
        box.put("isLogin","true");
        return true;
      }
      return false;
    }

  }

  logout(){
    var box = Hive.box("storage");
    box.delete("isLogin");
    return true;
  }
}