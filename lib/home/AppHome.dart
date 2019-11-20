import 'package:flutter/material.dart';
import 'package:silla_application/custom_widgets/custom_speed_dial.dart';
import 'package:silla_application/pages/allmesseges.dart';
import 'package:silla_application/pages/notifications.dart';
import 'package:silla_application/pages/settings.dart';
import 'package:silla_application/utils/AppColors.dart';
import 'package:silla_application/utils/router.dart';

import 'fragments/family_fragment.dart';
import 'fragments/main_page.dart';
import 'fragments/main_page_fragment/home_segments_fragment/new_post/add_help_screen.dart';
import 'fragments/main_page_fragment/home_segments_fragment/new_post/add_invitaion_screen.dart';
import 'fragments/main_page_fragment/home_segments_fragment/new_post/add_news_screen.dart';
import 'fragments/main_page_fragment/home_segments_fragment/new_post/add_poll_screen.dart';
import 'fragments/my_account_fragment.dart';
import 'fragments/search_fragment.dart';
import 'package:flutter_fab_dialer/flutter_fab_dialer.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}
final scaffoldKey = new GlobalKey<ScaffoldState>();
class _AppHomeState extends State<AppHome> {
  List<Widget> _fragments = [
    FamilyFragment(),
    MainPageFragment(),
    SearchFragment(),
    MyAccountFragment()
  ];
  int _selectedIndex = 0;

  List<String> _titles = ["العائله", "الرئيسيه", "البحث", "حسابي"];
  bool opend = false;

  var _fabMiniMenuItemList;

  @override
  void initState() {
    _fabMiniMenuItemList = [
      new FabMiniMenuItem.withText(
          new Icon(Icons.add), AppColors.mainColor, 4.0, "Button menu", () {
        Router.to(context, AddNewsScreen());
      }, "اضافة خبر جديد", AppColors.mainColor, Colors.white, true),
      new FabMiniMenuItem.withText(
          new Icon(Icons.add), AppColors.mainColor, 4.0, "Button menu", () {
        Router.to(context, AddInvitationScreen());
      }, "اضافة دعوه جديده", AppColors.mainColor, Colors.white, true),
      new FabMiniMenuItem.withText(
          new Icon(Icons.add), AppColors.mainColor, 4.0, "Button menu", () {
        Router.to(context, AddHelpScreen());
      }, "اضافة معونه جديده", AppColors.mainColor, Colors.white, true),
      new FabMiniMenuItem.withText(
          new Icon(Icons.add), AppColors.mainColor, 4.0, "Button menu", () {
        Router.to(context, AddPollScreen());
      }, "اضافة استطلاع جديد", AppColors.mainColor, Colors.white, true),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _selectedIndex == 1
        ? Scaffold(
      key: scaffoldKey,
            floatingActionButton: FabDialer(
                _fabMiniMenuItemList, Colors.pinkAccent, new Icon(Icons.add)),
            appBar: AppBar(
              centerTitle: true,
              title: Text(_titles.elementAt(_selectedIndex)),
              leading:
                  IconButton(icon: Icon(Icons.settings), onPressed: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Settings(),
                      ),
                    );
                  }),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.message), onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new AllMessages(),
                    ),
                  );
                }),
                IconButton(icon: Icon(Icons.notifications), onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new Notifications(),
                    ),
                  );
                }),
              ],
            ),
            body: _fragments.elementAt(_selectedIndex),
            bottomNavigationBar: BottomAppBar(
                child: BottomNavigationBar(
                  elevation: 0,
              backgroundColor: Colors.transparent,
              fixedColor: AppColors.mainColor,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_outline), title: Text("العائله")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("الرئيسيه")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("البحث")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), title: Text("حسابي")),
              ],
              currentIndex: _selectedIndex,
              onTap: (int selectedIndex) {
                setState(() {
                  _selectedIndex = selectedIndex;
                });
              },
            )),
          )
        : Scaffold(
      key: scaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              title: Text(_titles.elementAt(_selectedIndex)),
              leading:
                  IconButton(icon: Icon(Icons.settings), onPressed: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context)=>new Settings(),
                      ),
                    );
                  }),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.message), onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new AllMessages(),
                    ),
                  );
                }),
                IconButton(icon: Icon(Icons.notifications), onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context)=>new Notifications(),
                    ),
                  );
                }),
              ],
            ),
            body: _fragments.elementAt(_selectedIndex),
            bottomNavigationBar: BottomAppBar(
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
              fixedColor: AppColors.mainColor,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_outline), title: Text("العائله")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("الرئيسيه")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("البحث")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), title: Text("حسابي")),
              ],
              currentIndex: _selectedIndex,
              onTap: (int selectedIndex) {
                setState(() {
                  _selectedIndex = selectedIndex;
                });
              },
            )),
          );
  }
}
