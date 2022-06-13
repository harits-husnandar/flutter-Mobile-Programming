import 'package:flutter/material.dart';
import 'package:getx/const.dart';
import 'package:http/http.dart' as http;

class RemotePopularCategoryService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/popular-categories';

  Future<dynamic> get() async {
    var response = await client.get(Uri.parse(
        '$remoteUrl?populate=category,category.imagePagination[start]=0&pagination[limit]=5'));
    return response;
  }
}
