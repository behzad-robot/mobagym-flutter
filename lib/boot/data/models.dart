import 'dart:convert';



class AppInfo{
  static const String FILE = "app-info.json";

  //versions : available in app-info.json
  int levelsVersion = -1;
  int achievementsVersion = -1;
  int gameCategoriesVersion = -1;
  int socialTagsVersion = -1;


  //actual objects:
  LevelsInfo levelsInfo;
  AchievementsSettings achievementsInfo;
  //SocialTagsInfo socialTagsInfo;

  //constructors:
  AppInfo();
  AppInfo.json(String jsonStr){
    var jsonObj = json.decode(jsonStr);
    this.levelsVersion = jsonObj['levels'];
    this.achievementsVersion = jsonObj['achievements'];
    this.socialTagsVersion = jsonObj['social_tags'];
  }
}
//levels info:
class LevelsInfo{
  List<LevelEntry> levels;
  LevelsInfo.json(String str){
    dynamic jsonObj = json.decode(str);
    dynamic levelsJson = jsonObj['levels'];
    levels = new List<LevelEntry>();
    for(var i = 0 ; i < levelsJson.length;i++)
    {
      dynamic item = levelsJson[i];
     // print(json.encode(item));
      levels.add(new LevelEntry(item['level'],item['xp'],item['xpBarColor'],item['gif']));
    }
  }
  LevelEntry getLevel(int level){
    for(var i = 0 ; i < levels.length ; i++)
      if(levels[i].level == level)
        return levels[i];
    return levels[0];
  }
}
class LevelEntry{
  int level = 0;
  int xp = 0;//this level starts when user reaches this xp
  String xpBarColor; //ex:#18d1ff
  String gif; //url
  LevelEntry(this.level , this.xp , this.xpBarColor , this.gif );
}
//=================================
class AchievementsSettings{
  List<AchievementInfo> achievements = [];
  AchievementsSettings.json(String jsonStr){
    var jsonObj = json.decode(jsonStr);
    var jsonArray = jsonObj['results'];
    for(int i = 0 ; i < jsonArray.length;i++)
      achievements.add(new AchievementInfo.json(jsonArray[i]));
  }
  AchievementInfo getAchievementInfo(String token){
    for(int i = 0 ; i < achievements.length;i++)
      {
        if(achievements[i].token == token)
          return achievements[i];
      }
    return achievements[0];
  }
}
class AchievementInfo{
  String token; //achievement_type
  String title;
  String icon;
  List<String> categories;
  String description;
  List<dynamic> rewards; //TODO: rewards
  String rewardText; //reward_text
  AchievementInfo.json(dynamic jsonObj){
    token = jsonObj['achievement_type'];
    title = jsonObj['title'];
    icon = jsonObj['icon'];
    categories = [];
    var categoriesJSON = jsonObj['categories'];
    for(int i = 0 ; i < categoriesJSON.length;i++)
      categories.add(categoriesJSON[i]);
    description = jsonObj['description'];
    rewardText = jsonObj['reward_text'];
  }
}
/*
//social tags:
class SocialTagsInfo{
  List<SocialTag> tags = [];
  SocialTagsInfo(this.tags);

  SocialTag getTagByName(String name){
    for(var i = 0; i < tags.length;i++)
        if(tags[i].name == name)
          return tags[i];
    return null;
  }
}
*/