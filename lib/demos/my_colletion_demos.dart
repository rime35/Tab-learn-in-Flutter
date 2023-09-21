import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollettionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddinHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CatogoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CatogoryCard extends StatelessWidget {
  const _CatogoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(children: [
          Expanded(
              child: Image.asset(
            _model.imagePath,
            fit: BoxFit.fill,
          )),
          Padding(
            padding: PaddingUtility().paddingTop,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_model.title),
                Text('${_model.prince}'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double prince;
  CollectionModel(
      {required this.imagePath, required this.prince, required this.title});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 40);
  final paddingAll = EdgeInsets.all(15.0);
  final paddingBottom = EdgeInsets.only(bottom: 40);
  final paddinHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class CollettionItems {
  late List<CollectionModel> items;
  CollettionItems() {
    items = [
      CollectionModel(
          imagePath: 'assets/images/card_image.png.png',
          prince: 3.4,
          title: "Abstracat Art 1 "),
      CollectionModel(
          imagePath: 'assets/images/card_image.png.png',
          prince: 3.4,
          title: "Abstracat Art 2 "),
      CollectionModel(
          imagePath: 'assets/images/card_image.png.png',
          prince: 3.4,
          title: "Abstracat Art 3 "),
      CollectionModel(
          imagePath: 'assets/images/card_image.png.png',
          prince: 3.4,
          title: "Abstracat Art 4 "),
      CollectionModel(
          imagePath: 'assets/images/card_image.png.png',
          prince: 3.4,
          title: "Abstracat Art 5 "),
    ];
  }
}
