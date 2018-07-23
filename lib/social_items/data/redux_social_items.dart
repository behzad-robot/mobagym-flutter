

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/social_items/data/social_item.dart';
import 'package:redux/redux.dart';

part 'redux_social_items.g.dart';

abstract class SocialState implements Built<SocialState, SocialStateBuilder> {
  SocialState._();
  factory SocialState([updates(SocialStateBuilder b)]) = _$SocialState;

  BuiltList<SocialItem> get items;
  BuiltList<SocialItemQuery> get queries;


  SocialItemQuery getQuery(String params)
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

  SocialItem getItem(int id)
  {
    for(var i = 0 ; i < items.length;i++)
      if(items[i].id == id)
        return items[i];
    return null;
  }
  int getItemIndex(int id)
  {
    for(var i = 0 ; i < items.length;i++)
      if(items[i].id == id)
        return i;
    return -1;
  }
  List<SocialItem> getItemsForQuery(String params) {
    var query = getQuery(params);
    if(query == null)
      return null;
    var results = List<SocialItem>();
    for(var i = 0 ; i < query.ids.length;i++)
      results.add(getItem(query.ids[i]));
    return results;
  }

}
void socialMiddleware(Store<MobagymAppState> store, dynamic action, NextDispatcher next)
{
  final state = store.state.socialState;
  if(action is _GetItems)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      store.dispatch(_CreateQuery(action.params));
      _loadItemsToStore(store,action.params);
    }
    else
    {
      if(!query.loading && action.forceReload)
      {
        store.dispatch(new _ReloadQuery(action.params));
        _loadItemsToStore(store,action.params);
      }
      //other than this do nothing => request is either done and ok :) or has error or is loading!
    }
    return;
  }
  next(action);
}
void _loadItemsToStore(Store<MobagymAppState> store,String params){
  API.SocialItems.loadItems(params).then((items){
    store.dispatch(new _ItemsLoaded(items: items));
  }).catchError((err){
    store.dispatch(new _ItemsLoaded(error:err.toString()));
  });
}
SocialState socialReducer(SocialState state,dynamic action)
{
  if(action is _CreateQuery)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      query = SocialItemQuery(action.params);
      var newQueries = state.queries.toBuilder();
      newQueries.add(query);
      state = new SocialState((b)=>b.queries = newQueries);
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
      state = new SocialState((b)=>b.queries = state.queries.toBuilder());
    }
    //TODO: in reload query case => reload friend queries!
  }
  return state;
}


class SocialItemQuery{
  String params;
  String error;
  bool loading;
  List<int> ids = [];

  SocialItemQuery(this.params,{this.loading=true,this.error});

}
///store.dispatch(Actions.SocialActions.getItems());
class SocialActionsSet {
  _GetItems getItems(String params,{bool forceReload=false}) => _GetItems(params,forceReload: forceReload);

  _ItemsLoaded itemsLoaded(List<SocialItem> items) => _ItemsLoaded(items:items);
  _ItemsLoaded itemsLoadFailed(String err) => _ItemsLoaded(error: err);


//inner actions: only called via middleware dont need a function :))


}
class _GetItems{
  String params;
  bool forceReload;
  _GetItems(this.params,{this.forceReload=false});
}
class _ItemsLoaded{
  List<SocialItem> items = [];
  String error = null;
  _ItemsLoaded({this.items,this.error});
}
class _CreateQuery{
  String params;
  _CreateQuery(this.params);
}
class _ReloadQuery{
  String params;
  _ReloadQuery(this.params);
}