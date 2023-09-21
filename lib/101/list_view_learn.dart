import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          Container(color: Colors.red, height: 300),
          Divider(
            color: Colors.grey,
          ),
          Container(
            color: Colors.blue,
            height: 300,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          //xx
          FittedBox(
            child: Text(
              "Merhaba",
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          Container(color: Colors.red, height: 300),
          Divider(
            color: Colors.grey,
          ),
          Container(
            color: Colors.blue,
            height: 300,
          ),

          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          _ListDemo()
        ],
        //shrinkWrap: true,---> sığığ sığmayaacağına bakıyor
        //scrollDirection ----> Scroll yönünü belirliyor
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('hello world');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
