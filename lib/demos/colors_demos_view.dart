import 'package:flutter/material.dart';

class ColorDemo extends StatefulWidget {
  const ColorDemo({super.key});

  @override
  State<ColorDemo> createState() => _ColorDemoState();
}

class _ColorDemoState extends State<ColorDemo> {
  Color? _backGrounColor;
  void changeBackgraoundColor(Color backgroundColor) {
    setState(() {
      _backGrounColor = backgroundColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGrounColor,
      bottomNavigationBar: BottomNavigationBar(onTap: onTpChangeColor, items: [
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _colorContainer(
              color: Colors.blue,
            ),
            label: 'Blue'),
      ]),
    );
  }

  void onTpChangeColor(value) {
    if (value == ColorIndex.red.index) {
      changeBackgraoundColor(Colors.red);
    } else if (value == ColorIndex.yellow.index) {
      changeBackgraoundColor(Colors.yellow);
    } else {
      changeBackgraoundColor(Colors.blue);
    }
  }
}

enum ColorIndex { red, yellow, blue }

class _colorContainer extends StatelessWidget {
  const _colorContainer({
    required this.color,
    super.key,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10.0,
      height: 10.0,
    );
  }
}
