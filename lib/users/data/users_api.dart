

import 'dart:async';
import 'dart:convert';

import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/users/data/user.dart';

class UsersAPI{
  Future<User> loginUser(String username,String password) async{
    final response = await API.apiPost(API.apiUrl("auth/login"),{'username':username,'password':password});
    return parseUserFromString(response);
  }
  Future<List<User>> loadUsers(String params) async{
    final response = await API.apiGet(API.apiUrl("auth/users")+params);
    var jo = json.decode(response);
    var resultsJS = jo['results'];
    var users = <User>[];
    for(var i = 0 ; i < resultsJS.length; i++)
      users.add(parseUser(resultsJS[i]));

    return users;
  }
}