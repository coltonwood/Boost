import 'package:flutter/material.dart';
import 'package:pha_flutter/models/bottom-nav.dart';
import 'package:provider/provider.dart';

class AppFrame extends StatefulWidget {
  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNav(),
      child: Consumer<BottomNav>(
        builder: (context, bottomNav, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('HealthMine', style: TextStyle(color: Colors.black)),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 5,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: bottomNav.currentTab,
              onTap: bottomNav.setTab,
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.grey[800],
              unselectedItemColor: Colors.grey[700],
              items: bottomNav.tabs,
            ),
            body: IndexedStack(
              children: bottomNav.pages,
              index: bottomNav.currentTab,
            ),
          );
        },
      ),
    );
  }
}
