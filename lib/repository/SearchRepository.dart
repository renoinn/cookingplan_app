import 'package:cookingplan/entity/CustomSearchResponse.dart';
import 'package:cookingplan/env.dart';
import 'package:cookingplan/network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class SearchRepository {
  Future<CustomSearchResponse> search({@required String query,}) async {
    String path = '/customsearch/v1';
    Map<String, dynamic> params = {
      'key': GOOGLE_API_KEY,
      'cx': GOOGLE_CUSTOM_SEARCH_ID,
      'q': query,
    };

    Response response = await googleApi.get(path, queryParameters: params);
    return CustomSearchResponse.fromJson(response.data);
  }
}