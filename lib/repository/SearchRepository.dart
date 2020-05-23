import 'package:cookingplan/response/CustomSearchResponse.dart';
import 'package:cookingplan/env.dart';
import 'package:cookingplan/network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class SearchRepository {
  Future<CustomSearchResponse> search({@required String query, int page = 0}) async {
    final int num = 10;
    final int start = page * 10 + 1;
    String path = '/customsearch/v1';
    Map<String, dynamic> params = {
      'key': GOOGLE_API_KEY,
      'cx': GOOGLE_CUSTOM_SEARCH_ID,
      'q': query,
      'start': start.toString(),
      'num': num.toString(),
    };

    Response response = await googleApi.get(path, queryParameters: params);
    return CustomSearchResponse.fromJson(response.data);
  }
}