import 'package:flutter/material.dart';
import 'package:flutter_hardwareando/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()..userId = 1;
    user1.body = 'hello';

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');

    @override
    Widget build(BuildContext context) {
      return const Placeholder();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
