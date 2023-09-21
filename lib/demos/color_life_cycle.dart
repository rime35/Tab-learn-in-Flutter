import 'package:flutter/material.dart';

import 'colors_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Spacer(), Expanded(child: ColorDemo())],
      ),
    );
  }
}
