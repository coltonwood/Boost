import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:pha_flutter/screens/overview/overview-screen.dart';
import 'package:pha_flutter/tabs/inbox/inbox.dart';
import 'package:pha_flutter/tabs/learn/learn.dart';
import 'package:pha_flutter/tabs/more/more.dart';
import 'package:pha_flutter/tabs/rewards/rewards.dart';

class AppFrame extends StatefulWidget {
  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _currentTab = 0;

  _setTab(int idx) {
    setState(() {
      _currentTab = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HealthMine', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: _setTab,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.grey[800],
        unselectedItemColor: Colors.grey[700],
        items: [
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
        ],
      ),
      body: <Widget>[
        OverviewScreen(setTab: _setTab),
        Rewards(),
        Learn(),
        Inbox(),
        More(),
      ][_currentTab],
    );
  }
}
