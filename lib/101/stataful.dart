import 'package:flutter/material.dart';

import 'counter_custom.dart';

class Statefullearn extends StatefulWidget {
  const Statefullearn({super.key});

  @override
  State<Statefullearn> createState() => _StatefullearnState();
}

class _StatefullearnState extends State<Statefullearn> {
  int conterValue = 0;
  int counterCustom = 0;
  void incrementValue() {
    setState(() {
      conterValue = conterValue + 1;
    });
  }

  void deicrementValue() {
    setState(() {
      conterValue = conterValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icrementButton(),
          deicrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            conterValue.toString(),
            style: TextStyle(fontSize: 50),
          )),
          CounterCustom()
        ],
      ),
    );
  }

  FloatingActionButton icrementButton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: Icon(Icons.add),
    );
  }

  Padding deicrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          deicrementValue();
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
