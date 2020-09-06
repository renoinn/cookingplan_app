import 'package:cookingplan/env.dart';
import 'package:cookingplan/network.dart';
import 'package:cookingplan/response/CustomSearchResponse.dart';
import 'package:flutter/foundation.dart';

class SearchRepository {
  Future<CustomSearchResponse> search({@required String query, int page = 0}) async {
    final num = 10;
    final start = page * 10 + 1;
    var path = '/customsearch/v1';
    var params = <String, dynamic>{
      'key': kGoogleApiKey,
      'cx': kGoogleCustomeSearchId,
      'q': query,
      'start': start.toString(),
      'num': num.toString(),
    };

    var response = await googleApi.get<Map<String, dynamic>>(path, queryParameters: params);
    return CustomSearchResponse.fromJson(response.data);
  }
}
