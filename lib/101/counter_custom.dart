import 'package:flutter/material.dart';
import 'package:flutter_hardwareando/languages/languages_items.dart';

class CounterCustom extends StatefulWidget {
  const CounterCustom({super.key});

  @override
  State<CounterCustom> createState() => _CounterCustomState();
}

class _CounterCustomState extends State<CounterCustom> {
  int counterCustom = 0;
  void updateCounter() {
    setState(() {
      ++counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          updateCounter();
        },
        child: Text('${LanguagesItems.welcomeTitle} $counterCustom'));
  }
}
