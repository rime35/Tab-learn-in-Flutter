import 'package:flutter/material.dart';
import 'package:flutter_hardwareando/101/navihation_learn.dart';
import 'package:flutter_hardwareando/101/page_view_learn.dart';

import '../101/counter_custom.dart';
import '../101/life_cycle_learn.dart';
import '../101/list_view_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabContoroller;
  @override
  void initState() {
    super.initState();
    _tabContoroller =
        TabController(length: _MyTabsView.values.length, vsync: this); //
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabsView.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabContoroller.animateTo(_MyTabsView.home.index);
          }),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10.0,
            color: Colors.red,
            child: _MyTabBar(),
          ),
          appBar: AppBar(),
          body: _MyTabView(),
        ));
  }

  TabBar _MyTabBar() {
    return TabBar(
        controller: _tabContoroller,
        tabs: _MyTabsView.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }

  TabBarView _MyTabView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(), // elle scroll engelliyor
        controller: _tabContoroller,
        children: [
          ListViewLearn(),
          NavigationLearn(),
          PageViewLearn(),
          CounterCustom(),
        ]);
  }
}

enum _MyTabsView { home, settingis, favoiete, profile }
