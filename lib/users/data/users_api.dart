

import 'dart:async';

import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/users/data/user.dart';

class UsersAPI{
  Future<User> loginUser(String username,String password) async{
    final response = await API.apiPost(API.apiUrl("auth/login"),{'username':username,'password':password});
    return parseUser(response);
  }
}