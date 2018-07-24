
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/boot/data/models.dart';
import 'package:mobagym/utils/file_utils.dart';
import 'package:redux/redux.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController _controller;
  bool _isPlaying;
  bool _isLoading = false;
  String _error = null;

  @override
  void initState() {
    super.initState();
    //setup video player:
    //_controller = new VideoPlayerController.asset('assets/splash_video.mp4',)
    _controller = new VideoPlayerController.network('http://mobagym.com/media/mobagym-flutter-app/splash_video.mp4',)
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
          });
        }
      })
      ..initialize();
    _controller.play();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<MobagymAppState, Store>(
      converter: (store) {
        return store;
      },
      builder: (context, store) {
        if (!_isLoading) {
          _isLoading = true;
          print("start boot!");
          startBoot(store);
        }
        return Stack(children: <Widget>[
          new VideoPlayer(_controller),
          new Text(
            _error == null ? "" : "Error:" + _error.toString(),
            style: new TextStyle(fontSize: 24.0, color: Colors.white),
          )
        ], alignment: AlignmentDirectional.center);
      },
    );
  }
  void startBoot(Store store){
    _loadInfo(store).then((result){
      //TODO:login user!
      API.Users.loginUser("laku22","KopoKopo").then((user){
        print("logged in as ${user.username}");
        store.dispatch(Actions.UserActions.saveCurrentUser(user));
        finishBoot();
      }).catchError(onError);
    }).catchError(onError);
  }
  void finishBoot(){
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }
  Future<bool> _loadInfo(Store store) async{
    print("_loadInfo");
    var webAppInfo = await API.Boot.loadAppInfo();
    final hasStorageAppInfo = await FileUtils.isFileExists(AppInfo.FILE);
    AppInfo appInfo = new AppInfo();
    if(hasStorageAppInfo)
    {
      print("has StorageAppInfo!");
      final storageStr = await FileUtils.loadFileStr(AppInfo.FILE);
      appInfo = new AppInfo.json(storageStr);
    }
    else
      print("no storageAppInfo");
    //check versions and update modules:
    if(appInfo.levelsVersion != webAppInfo.levelsVersion)
      appInfo.levelsInfo = await API.Boot.loadLevelsInfo();
    if(appInfo.achievementsVersion != webAppInfo.achievementsVersion)
      appInfo.achievementsInfo = await API.Boot.loadAchievements();
    /*if(appInfo.socialTagsVersion != webAppInfo.socialTagsVersion)
      appInfo.socialTagsInfo = new SocialTagsInfo(await API.SocialItems.loadSocialTags());*/
    //checking logs:
    print("level count="+appInfo.levelsInfo.levels.length.toString());
    print("level 0 . gif ="+appInfo.levelsInfo.levels[0].gif);
    print("achievement count="+appInfo.achievementsInfo.achievements.length.toString());
    print("achievement 0.token="+appInfo.achievementsInfo.achievements[0].token);
    /*print("social tags count="+appInfo.socialTagsInfo.tags.length.toString());
    for(var i = 0 ; i < appInfo.socialTagsInfo.tags.length ; i++)
      print(appInfo.socialTagsInfo.tags[i].name);*/
    //storing new appInfo in storage & redux:
    store.dispatch(Actions.BootActions.saveAppInfo(appInfo));
    //TODO:storage!
    return true;
  }
  void onError(dynamic err){
    setState(() {
      _error = err.toString();
    });
  }

}
