import 'package:flutter/material.dart';
import 'package:flutter_hardwareando/101/page_view_learn.dart';
import 'package:flutter_hardwareando/101/stataful.dart';

import '101/life_cycle_learn.dart';
import '101/listViewBuilder_learn.dart';
import '101/list_view_learn.dart';
import '101/textfield_learn.dart';
import '202/tab_learn.dart';
import 'demos/color_life_cycle.dart';
import 'demos/colors_demos_view.dart';
import 'demos/my_colletion_demos.dart';
import '101/navihation_learn.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          tabBarTheme: TabBarTheme(
              indicator: ShapeDecoration.fromBoxDecoration(
                  BoxDecoration(borderRadius: BorderRadius.circular(14))),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.green),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
        ),
        home: TabLearn());
  }
}
// platform design
