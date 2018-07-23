

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobagym/boot/data/models.dart';


part 'redux_boot.g.dart';
//since this class's contents dont change we can keep it refrence type!
abstract class AppInfoState implements Built<AppInfoState, AppInfoStateBuilder> {
  AppInfoState._();
  factory AppInfoState([updates(AppInfoStateBuilder b)]) = _$AppInfoState;
  AppInfo get appInfo;
}

AppInfoState bootReducer(AppInfoState state,dynamic action)
{
  if(action is _SaveAppInfo)
  {
    state = new AppInfoState((b)=>b.appInfo = action.appInfo);
  }
  return state;
}

class BootActionsSet{
  _SaveAppInfo saveAppInfo(AppInfo appInfo) => _SaveAppInfo(appInfo);
}
class _SaveAppInfo{
  AppInfo appInfo;
  _SaveAppInfo(this.appInfo);
}
