import 'dart:convert';

import 'package:get/get.dart';
import '../models/responses/album.dart';
import 'api.dart';


class ApiRepository{
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<Album?> getRecords() async {
    var res = await apiProvider.getRecords(ApiConstants.records);
    var jsonString = jsonEncode(res.body);

    if (res.statusCode == 200) {
      return albumFromJson(jsonString);
    }
    return null;
  }
}