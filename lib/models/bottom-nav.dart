import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import '../screens/overview/overview-screen.dart';
import '../tabs/inbox/inbox.dart';
import '../tabs/learn/learn.dart';
import '../tabs/more/more.dart';
import '../tabs/rewards/rewards.dart';

class BottomNav extends ChangeNotifier {
  int _currentTab = 0;

  final List<BottomNavigationBarItem> _tabs = [
    BottomNavigationBarItem(
      icon: Icon(OMIcons.home),
      activeIcon: Icon(Icons.home),
      title: Text('Home'),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(OMIcons.shoppingCart),
      activeIcon: Icon(Icons.shopping_cart),
      title: Text('Rewards'),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(OMIcons.book),
      activeIcon: Icon(Icons.book),
      title: Text('Learn'),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(OMIcons.inbox),
      activeIcon: Icon(Icons.inbox),
      title: Text('Inbox'),
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: Icon(OMIcons.liveHelp),
      activeIcon: Icon(Icons.live_help),
      title: Text('More'),
      backgroundColor: Colors.white,
    )
  ];

  final List<Widget> _pages = [
    OverviewScreen(key: PageStorageKey('Page1')),
    Rewards(key: PageStorageKey('Page2')),
    Learn(key: PageStorageKey('Page3')),
    Inbox(key: PageStorageKey('Page4')),
    More(key: PageStorageKey('Page5')),
  ];

  final PageStorageBucket _bucket = PageStorageBucket();

  // getters
  UnmodifiableListView<BottomNavigationBarItem> get tabs =>
      UnmodifiableListView(_tabs);
  UnmodifiableListView<Widget> get pages => UnmodifiableListView(_pages);
  int get currentTab => _currentTab;
  Widget get currentPage => _pages[_currentTab];
  PageStorageBucket get bucket => _bucket;

  // methods
  void setTab(int index) {
    _currentTab = index;
    notifyListeners();
  }
}
