import 'package:flutter/material.dart';

import '../navigate_detail_learn.dart';
import 'counter_custom.dart';
import 'list_view_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index) {
    selectedItems.add(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await NavigatetoWidgetAdvance<bool>(
                  context,
                  NavigateDetail(
                    isOkey: selectedItems.contains(index),
                  ));
              if (response == true) {
                addSelected(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () {},
      ),
    );
  }
}

mixin NavigatorManager {
  void NavigatetoWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }

  Future<T?> NavigatetoWidgetAdvance<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}
