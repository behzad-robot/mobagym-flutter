import 'dart:async';

import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/boot/data/models.dart';


class BootAPI{
  static const String APP_INFO_BASE_FOLDER = "http://mobagym.com/media/mobagym-flutter-app/";
  static const String APP_INFO = "http://mobagym.com/media/mobagym-flutter-app/app-info.json";

  Future<AppInfo> loadAppInfo() async{
    var str = await API.apiGet(APP_INFO);
    return AppInfo.json(str);
  }
  Future<LevelsInfo> loadLevelsInfo() async{
    var str = await API.apiGet(APP_INFO_BASE_FOLDER+"levels.json");
    return new LevelsInfo.json(str);
  }
  Future<AchievementsSettings> loadAchievements() async{
    var str = await API.apiGet(API.apiUrl("achievements"));
    return new AchievementsSettings.json(str);
  }
}