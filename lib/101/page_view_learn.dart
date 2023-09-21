import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final pageContoreller = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(_currentIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              pageContoreller.nextPage(
                  duration: DuraationUtility.durationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_right_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(
              onPressed: () {
                pageContoreller.previousPage(
                    duration: DuraationUtility.durationLow,
                    curve: Curves.slowMiddle);
              },
              child: Icon(Icons.chevron_left_outlined),
            ),  
          ),
        ],
      ),
      body: PageView(
        padEnds: false,
        controller: pageContoreller,
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class DuraationUtility {
  static const durationLow = Duration(seconds: 1);
}
