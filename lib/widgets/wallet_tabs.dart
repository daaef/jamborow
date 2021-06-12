import 'package:flutter/material.dart';

import 'transaction.dart';

class WalletTabs extends StatefulWidget {
  _WalletTabsState createState() => _WalletTabsState();
}

class _WalletTabsState extends State<WalletTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        height: 300,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarOpacity: 0,
              automaticallyImplyLeading: false,
              bottom: TabBar(
                isScrollable: true,
                indicatorWeight: 4.0,
                labelColor: Colors.blue,
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    child: Text('All'),
                  ),
                  Tab(
                    child: Text(
                      'Deposited',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Withdrawn',
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Transaction(
                          title: 'My First Aquisition',
                          date: '22.02.2020',
                          amount: '45,000.00',
                          deposit: true),
                      Transaction(
                          title: 'Vintage Snickers',
                          date: '27.04.2020',
                          amount: '10,000.00',
                          deposit: false)
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Transaction(
                          title: 'My First Aquisition',
                          date: '22.02.2020',
                          amount: '45,000.00',
                          deposit: true),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Transaction(
                          title: 'Vintage Snickers',
                          date: '27.04.2020',
                          amount: '10,000.00',
                          deposit: false)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
