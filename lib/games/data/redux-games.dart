
import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/games/data/game.dart';

import 'package:redux/redux.dart';

part 'redux-games.g.dart';

abstract class GamesState implements Built<GamesState, GamesStateBuilder> {
  GamesState._();
  factory GamesState([updates(GamesStateBuilder b)]) = _$GamesState;

  BuiltList<Game> get games;
  BuiltList<GameQuery> get queries;

  Game getGames(int id)
  {
    for(var i = 0 ; i < games.length;i++)
      if(games[i].id == id)
        return games[i];
    return null;
  }
  int getGameIndex(int id)
  {
    for(var i = 0 ; i < games.length;i++)
      if(games[i].id == id)
        return i;
    return -1;
  }
  GameQuery getQuery(String params)
  {
    for(var i = 0 ; i < queries.length;i++)
      if(queries[i].params == params)
        return queries[i];
    return null;
  }
  int getQueryIndex(String params)
  {
    for(var i = 0 ; i < queries.length;i++)
      if(queries[i].params == params)
        return i;
    return -1;
  }

}

void gameMiddleware(Store<MobagymAppState> store, dynamic action, NextDispatcher next)
{
  final state = store.state.gamesState;
  if(action is _GetGames)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      store.dispatch(_CreateQuery(action.params));
      _loadGamesToStore(store,action.params);
    }
    else
    {
      if(!query.loading && action.forceReload)
      {
        store.dispatch(new _ReloadQuery(action.params));
        _loadGamesToStore(store,action.params);
      }
      //other than this do nothing => request is either done and ok :) or has error or is loading!
    }
    return;
  }
  next(action);
}
void _loadGamesToStore(Store<MobagymAppState> store,String params){
  API.Games.loadGames(params).then((games){
    store.dispatch(new _GamesLoaded(games: games));
  }).catchError((err){
    store.dispatch(new _GamesLoaded(error:err.toString()));
  });
}




GamesState gameReducer(GamesState state,dynamic action)
{
  if(action is _CreateQuery)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      query = GameQuery(action.params);
      var newQueries = state.queries.toBuilder();
      newQueries.add(query);
      state = new GamesState((b)=>b.queries = newQueries);
    }
  }
  else if(action is _ReloadQuery)
  {
    var queryIndex = state.getQueryIndex(action.params);
    if(queryIndex != -1)
    {
      state.queries[queryIndex].loading = true;
      state.queries[queryIndex].error = null;
      state.queries[queryIndex].ids = [];
      state = new GamesState((b)=>b.queries = state.queries.toBuilder());
    }
    //TODO: in reload query case => reload friend queries!
  }
  return state;
}

class GameQuery{
  String params;
  String error;
  bool loading;
  List<int> ids = [];

  GameQuery(this.params,{this.loading=true,this.error});

}
///store.dispatch(Actions.SocialActions.getItems());
class GameActionsSet {
  _GetGames getGames(String params,{bool forceReload=false}) => _GetGames(params,forceReload: forceReload);

  _GamesLoaded gamecommentsLoaded(List<Game> games) => _GamesLoaded(games: games);
  _GamesLoaded gamesLoadFailed(String err) => _GamesLoaded(error: err);
//inner actions: only called via middleware dont need a function :))


}
class _GetGames{
  String params;

  //TODO ==> ask forceReload
  bool forceReload;
  _GetGames(this.params,{this.forceReload=false});
}
class _GamesLoaded{
  List<Game> games = [];
  String error = null;
  _GamesLoaded({this.games,this.error});
}
class _CreateQuery{
  String params;
  _CreateQuery(this.params);
}
class _ReloadQuery {
  String params;

  _ReloadQuery(this.params);
}
