import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../model/handbook.dart';

class HandbookRepository {
  Future<List<Handbook>> loadHandbooks() async {
    String response;

    response =
        await rootBundle.loadString('lib/module/assets/data/handbooks.json');

    final List<dynamic> data = json.decode(response);
    return data.map((json) => Handbook.fromJson(json)).toList();
  }
}
