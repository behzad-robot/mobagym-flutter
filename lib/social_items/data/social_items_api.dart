
import 'dart:async';
import 'dart:convert';


import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/social_items/data/social_item.dart';



class SocialItemsAPI{
  Future<List<SocialItem>> loadItems(String params) async{
    final response = await API.apiGet(API.apiUrl("v2/social/posts")+params);
    dynamic jsonRes = json.decode(response);
    dynamic jsonResults = jsonRes['results'];
    var items = new List<SocialItem>();
    for(int i = 0 ; i < jsonResults.length; i++)
      items.add(parseSocialItem(jsonResults[i]));
    return items;
  }
  Future<List<SocialItem>> loadFeed(String params,String token) async{
    final response = await API.apiGetWithToken(API.apiUrl("social/feed")+params,token);
    dynamic jsonRes = json.decode(response);
    dynamic jsonResults = jsonRes['results'];
    var items = new List<SocialItem>();
    for(int i = 0 ; i < jsonResults.length; i++)
      items.add(parseSocialItem(jsonResults[i]));
    return items;
  }
  Future<bool> likeItem(bool like,int id,String type,String token) async{
    //http://mobagym.com/api/v2/social/posts/55080/like/
    final response = await API.apiGetWithToken(API.apiUrl("v2/social/posts/"+id.toString()+"/"+(like ? "like" : "unlike")),token);
    print(response);
    return true;
  }
  /*Future<List<SocialTag>> loadSocialTags() async{
    List<SocialTag> tags = [];
    final response = await API.apiGet(API.apiUrl("social/categories")+"?limit=1000");
    var jsonObj = json.decode(response);
    var results = jsonObj['results'];
    for(int i = 0 ; i< results.length;i++)
    {
      var jj = results[i];
      tags.add(new SocialTag(jj['id'],jj['name'],jj['icon']));
    }
    return tags;
  }*/

}