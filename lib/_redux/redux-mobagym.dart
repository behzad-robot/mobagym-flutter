
import 'package:built_value/built_value.dart';
import 'package:mobagym/boot/data/redux_boot.dart';
import 'package:mobagym/social_items/data/redux_social_items.dart';
import 'package:mobagym/users/data/redux_users.dart';
import 'package:redux/redux.dart';

part 'redux-mobagym.g.dart';

abstract class MobagymAppState implements Built<MobagymAppState, MobagymAppStateBuilder> {

  SocialState get socialState;
  @nullable AppInfoState get appInfoState;

  MobagymAppState._();
  factory MobagymAppState([updates(MobagymAppStateBuilder b)]) = _$MobagymAppState;
}


MobagymAppState mobagymReducer(MobagymAppState state,dynamic action)
{
  var s = new MobagymAppState((b)=>b
    ..socialState = socialReducer(state.socialState, action).toBuilder()
    ..appInfoState = bootReducer(state.appInfoState, action).toBuilder()
  );
  print("mobagymReducer");
  print(s);
  return s;
}
void mobagymMiddleware(Store<MobagymAppState> store, dynamic action, NextDispatcher next)
{
  print("Got Action of type "+action.toString()+' at '+new DateTime.now().toIso8601String());
  next(action);
}


class Actions{
  static SocialActionsSet SocialActions = new SocialActionsSet();
  static BootActionsSet BootActions = new BootActionsSet();
  static UsersActionSet UserActions = new UsersActionSet();
}