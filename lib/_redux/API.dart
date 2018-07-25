import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobagym/boot/data/boot_api.dart';
import 'package:mobagym/games/data/games_api.dart';
import 'package:mobagym/social_items/data/social_items_api.dart';
import 'package:mobagym/users/data/users_api.dart';

/*import 'package:mobagym/_redux/boot/boot_api.dart';
import 'package:mobagym/challenges/challenges_api.dart';
import 'package:mobagym/comments/comments_api.dart';
import 'package:mobagym/games/game_api.dart';

import 'package:mobagym/social_items/api/social_items_api.dart';
import 'package:mobagym/users/api/users_api.dart';*/


class API {
  static const String SITE_BASE_URL = "http://mobagym.com/";
  static const String API_BASE_URL = "http://mobagym.com/api/";
  static const String APP_INFO_URL = "http://mobagym.com/media/mobagym-app-info/app-info.json";
  static const String APP_INFO_FOLDER_URL = "http://mobagym.com/media/mobagym-app-info/";

  static String TOKEN = "NA";

  static String OK = "Mobagym_OK";
  static String FAILED = "Mobagym_OK";

  static String apiUrl(String place) {
    return API_BASE_URL + place + (place.endsWith('/') ? "" : "/");
  }
  static String apiArrayParams(List s) {
    String str = "";
    for (var i = 0; i < s.length - 1; i++) str += s[i].toString() + ",";
    str += s[s.length - 1].toString();
    return str;
  }
  static Future<String> apiGet(String url, {dynamic headers}) async {
    //headers["Content-Type"] = "text/html; charset=utf-8";
    //headers["Accept-Charset"] = "utf-8";
    print("apiGet => $url");
    var response = await http.get(url, headers: headers);
    String body = utf8.decode(response.bodyBytes);
    print("=> $body");
    return body;
  }
  static Future<String> apiGetWithToken(String url,String token, {dynamic headers}) async {
    final body = await apiGet(url,headers:{"Authorization":"Token "+token});
    return body;
  }

  static Future<String> apiPost(String url,dynamic body, {dynamic headers}) async{
    //headers["Content-Type"] = "text/html; charset=utf-8";
    //headers["Accept-Charset"] = "utf-8";
    print("apiPost => $url");
    print("body => $body");
    var response = await http.post(url,body: body,headers: headers);
    String result = utf8.decode(response.bodyBytes);
    print("=> $result");
    return result;
  }
  static Future<String> apiPostWithToken(String url,String token,dynamic body,{dynamic headers}) async{
    final result = await apiPost(url, body , headers:{"Authorization":"Token "+token});
    return result;
  }

  static Future<String> apiPatch(String url,dynamic body, {dynamic headers}) async{
    //headers["Content-Type"] = "text/html; charset=utf-8";
    //headers["Accept-Charset"] = "utf-8";
    print("apiPatch => $url");
    print("body => $body");
    var response = await http.patch(url,body: body,headers: headers);
    String result = utf8.decode(response.bodyBytes);
    print("=> $result");
    return result;
  }
  static Future<String> apiPatchWithToken(String url,String token,dynamic body,{dynamic headers}) async{
    final result = await apiPatch(url, body , headers:{"Authorization":"Token "+token});
    return result;
  }
  /*
    files is an array like this :
    [
      { 'path' : PATH , 'name' : NAME},
      { 'path' : PATH , 'name' : NAME},
      ...
    ]
  * */
  static Future<http.StreamedResponse> apiPatchMultiPartWithToken(String url,String token,{dynamic body,dynamic files,dynamic headers}) async{
    var request = new http.MultipartRequest("PUT", Uri.parse(url));
    if(files != null){
      for(var i = 0 ; i < files.length;i++){
        //print(request.files[i]['name']);
        request.files.add(await http.MultipartFile.fromPath(
          files[i]['name'],
          files[i]['path'],
        ));
      }
    }
    if(body != null)
      request.fields.addAll(body);
    if(headers != null)
      request.headers.addAll(headers);
    request.headers.addAll({
    'Authorization' : 'Token '+token,
    });
    return await request.send();
    /*if(response.statusCode == 200)
    {
    print(await response.stream.bytesToString());
    return API.OK;
    }
    throw new Exception(await response.stream.bytesToString());*/
  }

  static String checkFileUrl(String url){
    if(url == null)
      return "404";
    if(url.contains("http"))
      return url;
    else
      return SITE_BASE_URL+(url.startsWith("/") ? url.replaceFirst("/","") : url);
  }
  /*static Future<dynamic> loadAppInfo() async {
    final response = await http.get(APP_INFO_URL,
        headers: {"encoding": "utf-8", "Accept-Charset": "utf-8"});
    var body = response.body.substring(response.body.indexOf("{"));
    //response.body
    return json.decode(body);
  }*/

  //modules:
  static BootAPI Boot = new BootAPI();
  static UsersAPI Users = new UsersAPI();
  static SocialItemsAPI SocialItems = new SocialItemsAPI();
  static GamesAPI Games = new GamesAPI();
  /*
  static UsersAPI Users = new UsersAPI();
  static CommentsAPI Comments = new CommentsAPI();


  static ChallengesAPI Challenges  = new ChallengesAPI();*/
}
