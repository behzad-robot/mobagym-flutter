
import 'package:flutter/material.dart';


//Define Tabs:
enum TabItem{Home,Profile,Chat,Challenges,Games}
final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
  TabItem.Home: GlobalKey<NavigatorState>(),
  TabItem.Profile: GlobalKey<NavigatorState>(),
  TabItem.Chat: GlobalKey<NavigatorState>(),
  TabItem.Challenges: GlobalKey<NavigatorState>(),
};
NavigatorState ACTIVIY_NAVIGATOR;

int getTabIndex(TabItem t){
  if(t == TabItem.Home)
      return 0;
  else if(t == TabItem.Profile)
    return 1;
  else if(t == TabItem.Chat)
      return 2;
  else if(t == TabItem.Challenges)
    return 3;
  else if(t == TabItem.Games)
    return 4;
  return 0;
}
TabItem getTabItem(int index){
  if(index == 0)
    return TabItem.Home;
  else if(index == 1)
    return TabItem.Profile;
  else if(index == 2)
    return TabItem.Chat;
  else if(index == 3)
    return TabItem.Challenges;
  else if(index == 4)
    return TabItem.Games;
  return TabItem.Home;
}

class HomeWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomeWidget();

}
class _HomeWidget extends State<HomeWidget>{
  TabItem currentTab = TabItem.Home;
  List<bool> seenTabs = [false,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    ACTIVIY_NAVIGATOR = Navigator.of(context);
    return new WillPopScope(
        onWillPop: () async => !await navigatorKeys[currentTab].currentState.maybePop(),
        child:new Column(
          children: <Widget>[
            new Expanded(
                child: new Stack(
                  children: <Widget>[
                    _buildOffstageNavigator(TabItem.Home),
                    _buildOffstageNavigator(TabItem.Profile),
                    _buildOffstageNavigator(TabItem.Chat),
                    _buildOffstageNavigator(TabItem.Challenges),
                    _buildOffstageNavigator(TabItem.Games),
                  ],
                )),
            new BottomTabs(
              currentTab: currentTab,
              onSelectTab: _selectTab,
            )
          ],
        ));
  }
  void _selectTab(TabItem t){
    setState(() {
      seenTabs[getTabIndex(t)] = true;
      currentTab = t;
    });
  }
  Widget _buildOffstageNavigator(TabItem t) {
    var view = null;
    /*if(t == TabItem.Home)
      view = new HomeTab();
    else if(t == TabItem.Profile)
      view = new UserProfilePage.me();
      //view = new UsersListContainer("");
    else if(t == TabItem.Chat)
      view = new TestHelper();
    /*else if(t == TabItem.Challenges)
      view = new ChallengesListContainer();*/
    else if(t == TabItem.Games)
      view = GamesTab();
    else*/
    view = new Text("This is empty");
    return Offstage(
      offstage: currentTab != t,
      child: TabNavigator(
        navigatorKey: navigatorKeys[t],
        tabItem: t,
        home : view,
      ),
    );
  }

}
class BottomTabs extends StatelessWidget{
  TabItem currentTab;
  Function onSelectTab;
  BottomTabs({this.currentTab,this.onSelectTab});

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      new BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home"), backgroundColor: Colors.orange),
      new BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile"), backgroundColor: Colors.orange),
      new BottomNavigationBarItem(icon: Icon(Icons.chat),
          title: Text("Chat"),
          backgroundColor: Colors.orange),
      new BottomNavigationBarItem(icon: Icon(Icons.pages),
          title: Text("Challenges"),
          backgroundColor: Colors.orange),
      new BottomNavigationBarItem(icon: Icon(Icons.games),
          title: Text("Games"),
          backgroundColor: Colors.orange),
    ];
    return new BottomNavigationBar(
      currentIndex: getTabIndex(currentTab),
      items: _tabs,
      onTap: (index) {
        onSelectTab(getTabItem(index));
      },
    );
  }
}
class TabNavigator extends StatelessWidget{
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;
  final Widget home;
  TabNavigator({this.navigatorKey,this.tabItem,this.home});
  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        observers: [new HeroController()],
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) => home);
        }
    );
  }

}