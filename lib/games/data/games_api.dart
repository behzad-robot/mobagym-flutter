
import 'dart:async';
import 'dart:convert';

import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/games/data/game.dart';



class GamesAPI {
  Future<List<Game>> loadGames(String params) async {
    final response = await API.apiGet(API.apiUrl("games")+params);
    dynamic jsonRes = json.decode(response);
    dynamic jsonResults = jsonRes['results'];
    print("Async for games happend ");
    var games = new List<Game>();
    for (int i = 0; i < jsonResults.length; i++) {
      try {
        games.add(parseGames(jsonResults[i]));
        print("intro  :"+i.toString()+" "+games[i].intro);
        print("screenshots.image "+i.toString()+" "+games[i].screenshots[0].image.toString());
      } catch (err) {
        print(err.toString());
        break;
      }
    }
    return games;
  }
//  Future<GamesTabInfo> loadGamesTabInfo() async{
//    final response = await API.apiGet(API.APP_INFO_FOLDER_URL+"games-tab-info.json");
//    dynamic jsonRes = json.decode(response);
//    return GamesTabInfo.json(jsonRes);
//  }
//  Future<List<GameCategory>> loadCategories() async{
//    final response = await API.apiGet(API.apiUrl("games/categories"));
//    dynamic jsonRes=json.decode(response);
//    dynamic jsonResults=jsonRes['results'];
//    print("Async for categories happend ");
//    var catas = new List<GameCategory>();
//    for(int i=0 ; i<jsonResults.length ;i++)
//    {
//      try{
//        catas.add(new GameCategory.json(jsonResults[i]));
//      }catch(err){
//        print(err.toString());
//        break;
//      }
//    }
//    return catas;
//  }
}
