// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomSearchResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomSearchResponse _$_$_CustomSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CustomSearchResponse(
    kind: json['kind'] as String,
    url: json['url'] as Map<String, dynamic>,
    queries: json['queries'] == null
        ? null
        : CustomSearchQueries.fromJson(json['queries'] as Map<String, dynamic>),
    context: json['context'] as Map<String, dynamic>,
    searchInformation: json['searchInformation'] as Map<String, dynamic>,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : CustomSearchItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CustomSearchResponseToJson(
        _$_CustomSearchResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'url': instance.url,
      'queries': instance.queries,
      'context': instance.context,
      'searchInformation': instance.searchInformation,
      'items': instance.items,
    };

_$_CustomSearchQueries _$_$_CustomSearchQueriesFromJson(
    Map<String, dynamic> json) {
  return _$_CustomSearchQueries(
    request: (json['request'] as List)
        ?.map((e) => e == null
            ? null
            : CustomSearchRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextPage: (json['nextPage'] as List)
        ?.map((e) => e == null
            ? null
            : CustomSearchNextPage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CustomSearchQueriesToJson(
        _$_CustomSearchQueries instance) =>
    <String, dynamic>{
      'request': instance.request,
      'nextPage': instance.nextPage,
    };

_$_CustomSearchRequest _$_$_CustomSearchRequestFromJson(
    Map<String, dynamic> json) {
  return _$_CustomSearchRequest(
    title: json['title'] as String,
    totalResults: json['totalResults'] as String,
    searchTerms: json['searchTerms'] as String,
    count: json['count'] as int,
    startIndex: json['startIndex'] as int,
    inputEncoding: json['inputEncoding'] as String,
    outputEncoding: json['outputEncoding'] as String,
    safe: json['safe'] as String,
    cx: json['cx'] as String,
  );
}

Map<String, dynamic> _$_$_CustomSearchRequestToJson(
        _$_CustomSearchRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'totalResults': instance.totalResults,
      'searchTerms': instance.searchTerms,
      'count': instance.count,
      'startIndex': instance.startIndex,
      'inputEncoding': instance.inputEncoding,
      'outputEncoding': instance.outputEncoding,
      'safe': instance.safe,
      'cx': instance.cx,
    };

_$_CustomSearchNextPage _$_$_CustomSearchNextPageFromJson(
    Map<String, dynamic> json) {
  return _$_CustomSearchNextPage(
    title: json['title'] as String,
    totalResults: json['totalResults'] as String,
    searchTerms: json['searchTerms'] as String,
    count: json['count'] as int,
    startIndex: json['startIndex'] as int,
    inputEncoding: json['inputEncoding'] as String,
    outputEncoding: json['outputEncoding'] as String,
    safe: json['safe'] as String,
    cx: json['cx'] as String,
  );
}

Map<String, dynamic> _$_$_CustomSearchNextPageToJson(
        _$_CustomSearchNextPage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'totalResults': instance.totalResults,
      'searchTerms': instance.searchTerms,
      'count': instance.count,
      'startIndex': instance.startIndex,
      'inputEncoding': instance.inputEncoding,
      'outputEncoding': instance.outputEncoding,
      'safe': instance.safe,
      'cx': instance.cx,
    };

_$_CustomSearchItem _$_$_CustomSearchItemFromJson(Map<String, dynamic> json) {
  return _$_CustomSearchItem(
    kind: json['kind'] as String,
    title: json['title'] as String,
    htmlTitle: json['htmlTitle'] as String,
    link: json['link'] as String,
    displayLink: json['displayLink'] as String,
    snippet: json['snippet'] as String,
    htmlSnippet: json['htmlSnippet'] as String,
    cacheId: json['cacheId'] as String,
    formattedUrl: json['formattedUrl'] as String,
    htmlFormattedUrl: json['htmlFormattedUrl'] as String,
    pageMap: json['pagemap'] == null
        ? null
        : CustomSearchPageMap.fromJson(json['pagemap'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CustomSearchItemToJson(
        _$_CustomSearchItem instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'title': instance.title,
      'htmlTitle': instance.htmlTitle,
      'link': instance.link,
      'displayLink': instance.displayLink,
      'snippet': instance.snippet,
      'htmlSnippet': instance.htmlSnippet,
      'cacheId': instance.cacheId,
      'formattedUrl': instance.formattedUrl,
      'htmlFormattedUrl': instance.htmlFormattedUrl,
      'pagemap': instance.pageMap,
    };

_$_CustomSearchPageMap _$_$_CustomSearchPageMapFromJson(
    Map<String, dynamic> json) {
  return _$_CustomSearchPageMap(
    thumbnail: (json['thumbnail'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
    cseThumbnail: (json['cse_thumbnail'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
    metaTags: (json['metatags'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
    cseImage: (json['cse_image'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CustomSearchPageMapToJson(
        _$_CustomSearchPageMap instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'cse_thumbnail': instance.cseThumbnail,
      'metatags': instance.metaTags,
      'cse_image': instance.cseImage,
    };
