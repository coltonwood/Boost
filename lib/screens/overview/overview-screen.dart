import 'package:flutter/material.dart';
import 'package:pha_flutter/screens/overview/components/greeting.dart';
import 'package:pha_flutter/screens/overview/components/rewards-summary.dart';
import 'package:pha_flutter/widgets/progress-bar.dart';

class OverviewScreen extends StatefulWidget {
  OverviewScreen({Key key, this.setTab});
  final Function(int) setTab;

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            Greeting(
              name: 'Colton',
            ),
            RewardsSummary(
              setTab: widget.setTab,
              earnedAmount: 25,
              totalAmount: 100,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Tab(text: 'To-Do'),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Tab(text: 'Complete'),
                ),
              ],
            ),
            [
              Icon(Icons.list),
              Icon(Icons.check),
            ][_tabController.index],
          ],
        ),
      ),
    );
  }
}
