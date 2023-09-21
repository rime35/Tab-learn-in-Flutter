import 'package:flutter/material.dart';

class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  //sadee consturoctor zamanında gelebilir initilaze edilebilir
  PostModel(this.userId, this.id, this.title, this.body) {}
}

class PostModel2 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
  //  müşteri bunları named girsin yani ismine karşılık girsin dersek bu yöntemi kullınıyoruz
}
//initilaze etmek bu değer ne olacak kardeşim kim dolduracak nasıl dolduracak.initilaze etmek budur

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;

  //sadee consturoctor zamanında gelebilir initilaze edilebilir
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}
