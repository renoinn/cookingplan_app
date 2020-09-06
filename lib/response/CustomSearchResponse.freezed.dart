// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'CustomSearchResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomSearchResponse _$CustomSearchResponseFromJson(Map<String, dynamic> json) {
  return _CustomSearchResponse.fromJson(json);
}

class _$CustomSearchResponseTearOff {
  const _$CustomSearchResponseTearOff();

// ignore: unused_element
  _CustomSearchResponse call(
      {String kind,
      Map<String, dynamic> url,
      CustomSearchQueries queries,
      Map<String, dynamic> context,
      Map<String, dynamic> searchInformation,
      List<CustomSearchItem> items}) {
    return _CustomSearchResponse(
      kind: kind,
      url: url,
      queries: queries,
      context: context,
      searchInformation: searchInformation,
      items: items,
    );
  }
}

// ignore: unused_element
const $CustomSearchResponse = _$CustomSearchResponseTearOff();

mixin _$CustomSearchResponse {
  String get kind;
  Map<String, dynamic> get url;
  CustomSearchQueries get queries;
  Map<String, dynamic> get context;
  Map<String, dynamic> get searchInformation;
  List<CustomSearchItem> get items;

  Map<String, dynamic> toJson();
  $CustomSearchResponseCopyWith<CustomSearchResponse> get copyWith;
}

abstract class $CustomSearchResponseCopyWith<$Res> {
  factory $CustomSearchResponseCopyWith(CustomSearchResponse value,
          $Res Function(CustomSearchResponse) then) =
      _$CustomSearchResponseCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      Map<String, dynamic> url,
      CustomSearchQueries queries,
      Map<String, dynamic> context,
      Map<String, dynamic> searchInformation,
      List<CustomSearchItem> items});

  $CustomSearchQueriesCopyWith<$Res> get queries;
}

class _$CustomSearchResponseCopyWithImpl<$Res>
    implements $CustomSearchResponseCopyWith<$Res> {
  _$CustomSearchResponseCopyWithImpl(this._value, this._then);

  final CustomSearchResponse _value;
  // ignore: unused_field
  final $Res Function(CustomSearchResponse) _then;

  @override
  $Res call({
    Object kind = freezed,
    Object url = freezed,
    Object queries = freezed,
    Object context = freezed,
    Object searchInformation = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed ? _value.kind : kind as String,
      url: url == freezed ? _value.url : url as Map<String, dynamic>,
      queries:
          queries == freezed ? _value.queries : queries as CustomSearchQueries,
      context:
          context == freezed ? _value.context : context as Map<String, dynamic>,
      searchInformation: searchInformation == freezed
          ? _value.searchInformation
          : searchInformation as Map<String, dynamic>,
      items: items == freezed ? _value.items : items as List<CustomSearchItem>,
    ));
  }

  @override
  $CustomSearchQueriesCopyWith<$Res> get queries {
    if (_value.queries == null) {
      return null;
    }
    return $CustomSearchQueriesCopyWith<$Res>(_value.queries, (value) {
      return _then(_value.copyWith(queries: value));
    });
  }
}

abstract class _$CustomSearchResponseCopyWith<$Res>
    implements $CustomSearchResponseCopyWith<$Res> {
  factory _$CustomSearchResponseCopyWith(_CustomSearchResponse value,
          $Res Function(_CustomSearchResponse) then) =
      __$CustomSearchResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      Map<String, dynamic> url,
      CustomSearchQueries queries,
      Map<String, dynamic> context,
      Map<String, dynamic> searchInformation,
      List<CustomSearchItem> items});

  @override
  $CustomSearchQueriesCopyWith<$Res> get queries;
}

class __$CustomSearchResponseCopyWithImpl<$Res>
    extends _$CustomSearchResponseCopyWithImpl<$Res>
    implements _$CustomSearchResponseCopyWith<$Res> {
  __$CustomSearchResponseCopyWithImpl(
      _CustomSearchResponse _value, $Res Function(_CustomSearchResponse) _then)
      : super(_value, (v) => _then(v as _CustomSearchResponse));

  @override
  _CustomSearchResponse get _value => super._value as _CustomSearchResponse;

  @override
  $Res call({
    Object kind = freezed,
    Object url = freezed,
    Object queries = freezed,
    Object context = freezed,
    Object searchInformation = freezed,
    Object items = freezed,
  }) {
    return _then(_CustomSearchResponse(
      kind: kind == freezed ? _value.kind : kind as String,
      url: url == freezed ? _value.url : url as Map<String, dynamic>,
      queries:
          queries == freezed ? _value.queries : queries as CustomSearchQueries,
      context:
          context == freezed ? _value.context : context as Map<String, dynamic>,
      searchInformation: searchInformation == freezed
          ? _value.searchInformation
          : searchInformation as Map<String, dynamic>,
      items: items == freezed ? _value.items : items as List<CustomSearchItem>,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchResponse
    with DiagnosticableTreeMixin
    implements _CustomSearchResponse {
  _$_CustomSearchResponse(
      {this.kind,
      this.url,
      this.queries,
      this.context,
      this.searchInformation,
      this.items});

  factory _$_CustomSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchResponseFromJson(json);

  @override
  final String kind;
  @override
  final Map<String, dynamic> url;
  @override
  final CustomSearchQueries queries;
  @override
  final Map<String, dynamic> context;
  @override
  final Map<String, dynamic> searchInformation;
  @override
  final List<CustomSearchItem> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchResponse(kind: $kind, url: $url, queries: $queries, context: $context, searchInformation: $searchInformation, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchResponse'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('queries', queries))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('searchInformation', searchInformation))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchResponse &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.queries, queries) ||
                const DeepCollectionEquality()
                    .equals(other.queries, queries)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.searchInformation, searchInformation) ||
                const DeepCollectionEquality()
                    .equals(other.searchInformation, searchInformation)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(queries) ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(searchInformation) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$CustomSearchResponseCopyWith<_CustomSearchResponse> get copyWith =>
      __$CustomSearchResponseCopyWithImpl<_CustomSearchResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchResponseToJson(this);
  }
}

abstract class _CustomSearchResponse implements CustomSearchResponse {
  factory _CustomSearchResponse(
      {String kind,
      Map<String, dynamic> url,
      CustomSearchQueries queries,
      Map<String, dynamic> context,
      Map<String, dynamic> searchInformation,
      List<CustomSearchItem> items}) = _$_CustomSearchResponse;

  factory _CustomSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchResponse.fromJson;

  @override
  String get kind;
  @override
  Map<String, dynamic> get url;
  @override
  CustomSearchQueries get queries;
  @override
  Map<String, dynamic> get context;
  @override
  Map<String, dynamic> get searchInformation;
  @override
  List<CustomSearchItem> get items;
  @override
  _$CustomSearchResponseCopyWith<_CustomSearchResponse> get copyWith;
}

CustomSearchQueries _$CustomSearchQueriesFromJson(Map<String, dynamic> json) {
  return _CustomSearchQueries.fromJson(json);
}

class _$CustomSearchQueriesTearOff {
  const _$CustomSearchQueriesTearOff();

// ignore: unused_element
  _CustomSearchQueries call(
      {List<CustomSearchRequest> request,
      List<CustomSearchNextPage> nextPage}) {
    return _CustomSearchQueries(
      request: request,
      nextPage: nextPage,
    );
  }
}

// ignore: unused_element
const $CustomSearchQueries = _$CustomSearchQueriesTearOff();

mixin _$CustomSearchQueries {
  List<CustomSearchRequest> get request;
  List<CustomSearchNextPage> get nextPage;

  Map<String, dynamic> toJson();
  $CustomSearchQueriesCopyWith<CustomSearchQueries> get copyWith;
}

abstract class $CustomSearchQueriesCopyWith<$Res> {
  factory $CustomSearchQueriesCopyWith(
          CustomSearchQueries value, $Res Function(CustomSearchQueries) then) =
      _$CustomSearchQueriesCopyWithImpl<$Res>;
  $Res call(
      {List<CustomSearchRequest> request, List<CustomSearchNextPage> nextPage});
}

class _$CustomSearchQueriesCopyWithImpl<$Res>
    implements $CustomSearchQueriesCopyWith<$Res> {
  _$CustomSearchQueriesCopyWithImpl(this._value, this._then);

  final CustomSearchQueries _value;
  // ignore: unused_field
  final $Res Function(CustomSearchQueries) _then;

  @override
  $Res call({
    Object request = freezed,
    Object nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request as List<CustomSearchRequest>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage as List<CustomSearchNextPage>,
    ));
  }
}

abstract class _$CustomSearchQueriesCopyWith<$Res>
    implements $CustomSearchQueriesCopyWith<$Res> {
  factory _$CustomSearchQueriesCopyWith(_CustomSearchQueries value,
          $Res Function(_CustomSearchQueries) then) =
      __$CustomSearchQueriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CustomSearchRequest> request, List<CustomSearchNextPage> nextPage});
}

class __$CustomSearchQueriesCopyWithImpl<$Res>
    extends _$CustomSearchQueriesCopyWithImpl<$Res>
    implements _$CustomSearchQueriesCopyWith<$Res> {
  __$CustomSearchQueriesCopyWithImpl(
      _CustomSearchQueries _value, $Res Function(_CustomSearchQueries) _then)
      : super(_value, (v) => _then(v as _CustomSearchQueries));

  @override
  _CustomSearchQueries get _value => super._value as _CustomSearchQueries;

  @override
  $Res call({
    Object request = freezed,
    Object nextPage = freezed,
  }) {
    return _then(_CustomSearchQueries(
      request: request == freezed
          ? _value.request
          : request as List<CustomSearchRequest>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage as List<CustomSearchNextPage>,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchQueries
    with DiagnosticableTreeMixin
    implements _CustomSearchQueries {
  _$_CustomSearchQueries({this.request, this.nextPage});

  factory _$_CustomSearchQueries.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchQueriesFromJson(json);

  @override
  final List<CustomSearchRequest> request;
  @override
  final List<CustomSearchNextPage> nextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchQueries(request: $request, nextPage: $nextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchQueries'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('nextPage', nextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchQueries &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(nextPage);

  @override
  _$CustomSearchQueriesCopyWith<_CustomSearchQueries> get copyWith =>
      __$CustomSearchQueriesCopyWithImpl<_CustomSearchQueries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchQueriesToJson(this);
  }
}

abstract class _CustomSearchQueries implements CustomSearchQueries {
  factory _CustomSearchQueries(
      {List<CustomSearchRequest> request,
      List<CustomSearchNextPage> nextPage}) = _$_CustomSearchQueries;

  factory _CustomSearchQueries.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchQueries.fromJson;

  @override
  List<CustomSearchRequest> get request;
  @override
  List<CustomSearchNextPage> get nextPage;
  @override
  _$CustomSearchQueriesCopyWith<_CustomSearchQueries> get copyWith;
}

CustomSearchRequest _$CustomSearchRequestFromJson(Map<String, dynamic> json) {
  return _CustomSearchRequest.fromJson(json);
}

class _$CustomSearchRequestTearOff {
  const _$CustomSearchRequestTearOff();

// ignore: unused_element
  _CustomSearchRequest call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx}) {
    return _CustomSearchRequest(
      title: title,
      totalResults: totalResults,
      searchTerms: searchTerms,
      count: count,
      startIndex: startIndex,
      inputEncoding: inputEncoding,
      outputEncoding: outputEncoding,
      safe: safe,
      cx: cx,
    );
  }
}

// ignore: unused_element
const $CustomSearchRequest = _$CustomSearchRequestTearOff();

mixin _$CustomSearchRequest {
  String get title;
  String get totalResults;
  String get searchTerms;
  int get count;
  int get startIndex;
  String get inputEncoding;
  String get outputEncoding;
  String get safe;
  String get cx;

  Map<String, dynamic> toJson();
  $CustomSearchRequestCopyWith<CustomSearchRequest> get copyWith;
}

abstract class $CustomSearchRequestCopyWith<$Res> {
  factory $CustomSearchRequestCopyWith(
          CustomSearchRequest value, $Res Function(CustomSearchRequest) then) =
      _$CustomSearchRequestCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx});
}

class _$CustomSearchRequestCopyWithImpl<$Res>
    implements $CustomSearchRequestCopyWith<$Res> {
  _$CustomSearchRequestCopyWithImpl(this._value, this._then);

  final CustomSearchRequest _value;
  // ignore: unused_field
  final $Res Function(CustomSearchRequest) _then;

  @override
  $Res call({
    Object title = freezed,
    Object totalResults = freezed,
    Object searchTerms = freezed,
    Object count = freezed,
    Object startIndex = freezed,
    Object inputEncoding = freezed,
    Object outputEncoding = freezed,
    Object safe = freezed,
    Object cx = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults as String,
      searchTerms:
          searchTerms == freezed ? _value.searchTerms : searchTerms as String,
      count: count == freezed ? _value.count : count as int,
      startIndex: startIndex == freezed ? _value.startIndex : startIndex as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding as String,
      safe: safe == freezed ? _value.safe : safe as String,
      cx: cx == freezed ? _value.cx : cx as String,
    ));
  }
}

abstract class _$CustomSearchRequestCopyWith<$Res>
    implements $CustomSearchRequestCopyWith<$Res> {
  factory _$CustomSearchRequestCopyWith(_CustomSearchRequest value,
          $Res Function(_CustomSearchRequest) then) =
      __$CustomSearchRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx});
}

class __$CustomSearchRequestCopyWithImpl<$Res>
    extends _$CustomSearchRequestCopyWithImpl<$Res>
    implements _$CustomSearchRequestCopyWith<$Res> {
  __$CustomSearchRequestCopyWithImpl(
      _CustomSearchRequest _value, $Res Function(_CustomSearchRequest) _then)
      : super(_value, (v) => _then(v as _CustomSearchRequest));

  @override
  _CustomSearchRequest get _value => super._value as _CustomSearchRequest;

  @override
  $Res call({
    Object title = freezed,
    Object totalResults = freezed,
    Object searchTerms = freezed,
    Object count = freezed,
    Object startIndex = freezed,
    Object inputEncoding = freezed,
    Object outputEncoding = freezed,
    Object safe = freezed,
    Object cx = freezed,
  }) {
    return _then(_CustomSearchRequest(
      title: title == freezed ? _value.title : title as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults as String,
      searchTerms:
          searchTerms == freezed ? _value.searchTerms : searchTerms as String,
      count: count == freezed ? _value.count : count as int,
      startIndex: startIndex == freezed ? _value.startIndex : startIndex as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding as String,
      safe: safe == freezed ? _value.safe : safe as String,
      cx: cx == freezed ? _value.cx : cx as String,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchRequest
    with DiagnosticableTreeMixin
    implements _CustomSearchRequest {
  _$_CustomSearchRequest(
      {this.title,
      this.totalResults,
      this.searchTerms,
      this.count,
      this.startIndex,
      this.inputEncoding,
      this.outputEncoding,
      this.safe,
      this.cx});

  factory _$_CustomSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchRequestFromJson(json);

  @override
  final String title;
  @override
  final String totalResults;
  @override
  final String searchTerms;
  @override
  final int count;
  @override
  final int startIndex;
  @override
  final String inputEncoding;
  @override
  final String outputEncoding;
  @override
  final String safe;
  @override
  final String cx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchRequest(title: $title, totalResults: $totalResults, searchTerms: $searchTerms, count: $count, startIndex: $startIndex, inputEncoding: $inputEncoding, outputEncoding: $outputEncoding, safe: $safe, cx: $cx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchRequest'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('searchTerms', searchTerms))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('startIndex', startIndex))
      ..add(DiagnosticsProperty('inputEncoding', inputEncoding))
      ..add(DiagnosticsProperty('outputEncoding', outputEncoding))
      ..add(DiagnosticsProperty('safe', safe))
      ..add(DiagnosticsProperty('cx', cx));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchRequest &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.searchTerms, searchTerms) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerms, searchTerms)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.startIndex, startIndex) ||
                const DeepCollectionEquality()
                    .equals(other.startIndex, startIndex)) &&
            (identical(other.inputEncoding, inputEncoding) ||
                const DeepCollectionEquality()
                    .equals(other.inputEncoding, inputEncoding)) &&
            (identical(other.outputEncoding, outputEncoding) ||
                const DeepCollectionEquality()
                    .equals(other.outputEncoding, outputEncoding)) &&
            (identical(other.safe, safe) ||
                const DeepCollectionEquality().equals(other.safe, safe)) &&
            (identical(other.cx, cx) ||
                const DeepCollectionEquality().equals(other.cx, cx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(searchTerms) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(startIndex) ^
      const DeepCollectionEquality().hash(inputEncoding) ^
      const DeepCollectionEquality().hash(outputEncoding) ^
      const DeepCollectionEquality().hash(safe) ^
      const DeepCollectionEquality().hash(cx);

  @override
  _$CustomSearchRequestCopyWith<_CustomSearchRequest> get copyWith =>
      __$CustomSearchRequestCopyWithImpl<_CustomSearchRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchRequestToJson(this);
  }
}

abstract class _CustomSearchRequest implements CustomSearchRequest {
  factory _CustomSearchRequest(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx}) = _$_CustomSearchRequest;

  factory _CustomSearchRequest.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchRequest.fromJson;

  @override
  String get title;
  @override
  String get totalResults;
  @override
  String get searchTerms;
  @override
  int get count;
  @override
  int get startIndex;
  @override
  String get inputEncoding;
  @override
  String get outputEncoding;
  @override
  String get safe;
  @override
  String get cx;
  @override
  _$CustomSearchRequestCopyWith<_CustomSearchRequest> get copyWith;
}

CustomSearchNextPage _$CustomSearchNextPageFromJson(Map<String, dynamic> json) {
  return _CustomSearchNextPage.fromJson(json);
}

class _$CustomSearchNextPageTearOff {
  const _$CustomSearchNextPageTearOff();

// ignore: unused_element
  _CustomSearchNextPage call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx}) {
    return _CustomSearchNextPage(
      title: title,
      totalResults: totalResults,
      searchTerms: searchTerms,
      count: count,
      startIndex: startIndex,
      inputEncoding: inputEncoding,
      outputEncoding: outputEncoding,
      safe: safe,
      cx: cx,
    );
  }
}

// ignore: unused_element
const $CustomSearchNextPage = _$CustomSearchNextPageTearOff();

mixin _$CustomSearchNextPage {
  String get title;
  String get totalResults;
  String get searchTerms;
  int get count;
  int get startIndex;
  String get inputEncoding;
  String get outputEncoding;
  String get safe;
  String get cx;

  Map<String, dynamic> toJson();
  $CustomSearchNextPageCopyWith<CustomSearchNextPage> get copyWith;
}

abstract class $CustomSearchNextPageCopyWith<$Res> {
  factory $CustomSearchNextPageCopyWith(CustomSearchNextPage value,
          $Res Function(CustomSearchNextPage) then) =
      _$CustomSearchNextPageCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx});
}

class _$CustomSearchNextPageCopyWithImpl<$Res>
    implements $CustomSearchNextPageCopyWith<$Res> {
  _$CustomSearchNextPageCopyWithImpl(this._value, this._then);

  final CustomSearchNextPage _value;
  // ignore: unused_field
  final $Res Function(CustomSearchNextPage) _then;

  @override
  $Res call({
    Object title = freezed,
    Object totalResults = freezed,
    Object searchTerms = freezed,
    Object count = freezed,
    Object startIndex = freezed,
    Object inputEncoding = freezed,
    Object outputEncoding = freezed,
    Object safe = freezed,
    Object cx = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults as String,
      searchTerms:
          searchTerms == freezed ? _value.searchTerms : searchTerms as String,
      count: count == freezed ? _value.count : count as int,
      startIndex: startIndex == freezed ? _value.startIndex : startIndex as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding as String,
      safe: safe == freezed ? _value.safe : safe as String,
      cx: cx == freezed ? _value.cx : cx as String,
    ));
  }
}

abstract class _$CustomSearchNextPageCopyWith<$Res>
    implements $CustomSearchNextPageCopyWith<$Res> {
  factory _$CustomSearchNextPageCopyWith(_CustomSearchNextPage value,
          $Res Function(_CustomSearchNextPage) then) =
      __$CustomSearchNextPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx});
}

class __$CustomSearchNextPageCopyWithImpl<$Res>
    extends _$CustomSearchNextPageCopyWithImpl<$Res>
    implements _$CustomSearchNextPageCopyWith<$Res> {
  __$CustomSearchNextPageCopyWithImpl(
      _CustomSearchNextPage _value, $Res Function(_CustomSearchNextPage) _then)
      : super(_value, (v) => _then(v as _CustomSearchNextPage));

  @override
  _CustomSearchNextPage get _value => super._value as _CustomSearchNextPage;

  @override
  $Res call({
    Object title = freezed,
    Object totalResults = freezed,
    Object searchTerms = freezed,
    Object count = freezed,
    Object startIndex = freezed,
    Object inputEncoding = freezed,
    Object outputEncoding = freezed,
    Object safe = freezed,
    Object cx = freezed,
  }) {
    return _then(_CustomSearchNextPage(
      title: title == freezed ? _value.title : title as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults as String,
      searchTerms:
          searchTerms == freezed ? _value.searchTerms : searchTerms as String,
      count: count == freezed ? _value.count : count as int,
      startIndex: startIndex == freezed ? _value.startIndex : startIndex as int,
      inputEncoding: inputEncoding == freezed
          ? _value.inputEncoding
          : inputEncoding as String,
      outputEncoding: outputEncoding == freezed
          ? _value.outputEncoding
          : outputEncoding as String,
      safe: safe == freezed ? _value.safe : safe as String,
      cx: cx == freezed ? _value.cx : cx as String,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchNextPage
    with DiagnosticableTreeMixin
    implements _CustomSearchNextPage {
  _$_CustomSearchNextPage(
      {this.title,
      this.totalResults,
      this.searchTerms,
      this.count,
      this.startIndex,
      this.inputEncoding,
      this.outputEncoding,
      this.safe,
      this.cx});

  factory _$_CustomSearchNextPage.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchNextPageFromJson(json);

  @override
  final String title;
  @override
  final String totalResults;
  @override
  final String searchTerms;
  @override
  final int count;
  @override
  final int startIndex;
  @override
  final String inputEncoding;
  @override
  final String outputEncoding;
  @override
  final String safe;
  @override
  final String cx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchNextPage(title: $title, totalResults: $totalResults, searchTerms: $searchTerms, count: $count, startIndex: $startIndex, inputEncoding: $inputEncoding, outputEncoding: $outputEncoding, safe: $safe, cx: $cx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchNextPage'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('searchTerms', searchTerms))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('startIndex', startIndex))
      ..add(DiagnosticsProperty('inputEncoding', inputEncoding))
      ..add(DiagnosticsProperty('outputEncoding', outputEncoding))
      ..add(DiagnosticsProperty('safe', safe))
      ..add(DiagnosticsProperty('cx', cx));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchNextPage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.searchTerms, searchTerms) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerms, searchTerms)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.startIndex, startIndex) ||
                const DeepCollectionEquality()
                    .equals(other.startIndex, startIndex)) &&
            (identical(other.inputEncoding, inputEncoding) ||
                const DeepCollectionEquality()
                    .equals(other.inputEncoding, inputEncoding)) &&
            (identical(other.outputEncoding, outputEncoding) ||
                const DeepCollectionEquality()
                    .equals(other.outputEncoding, outputEncoding)) &&
            (identical(other.safe, safe) ||
                const DeepCollectionEquality().equals(other.safe, safe)) &&
            (identical(other.cx, cx) ||
                const DeepCollectionEquality().equals(other.cx, cx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(searchTerms) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(startIndex) ^
      const DeepCollectionEquality().hash(inputEncoding) ^
      const DeepCollectionEquality().hash(outputEncoding) ^
      const DeepCollectionEquality().hash(safe) ^
      const DeepCollectionEquality().hash(cx);

  @override
  _$CustomSearchNextPageCopyWith<_CustomSearchNextPage> get copyWith =>
      __$CustomSearchNextPageCopyWithImpl<_CustomSearchNextPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchNextPageToJson(this);
  }
}

abstract class _CustomSearchNextPage implements CustomSearchNextPage {
  factory _CustomSearchNextPage(
      {String title,
      String totalResults,
      String searchTerms,
      int count,
      int startIndex,
      String inputEncoding,
      String outputEncoding,
      String safe,
      String cx}) = _$_CustomSearchNextPage;

  factory _CustomSearchNextPage.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchNextPage.fromJson;

  @override
  String get title;
  @override
  String get totalResults;
  @override
  String get searchTerms;
  @override
  int get count;
  @override
  int get startIndex;
  @override
  String get inputEncoding;
  @override
  String get outputEncoding;
  @override
  String get safe;
  @override
  String get cx;
  @override
  _$CustomSearchNextPageCopyWith<_CustomSearchNextPage> get copyWith;
}

CustomSearchItem _$CustomSearchItemFromJson(Map<String, dynamic> json) {
  return _CustomSearchItem.fromJson(json);
}

class _$CustomSearchItemTearOff {
  const _$CustomSearchItemTearOff();

// ignore: unused_element
  _CustomSearchItem call(
      {String kind,
      String title,
      String htmlTitle,
      String link,
      String displayLink,
      String snippet,
      String htmlSnippet,
      String cacheId,
      String formattedUrl,
      String htmlFormattedUrl,
      @JsonKey(name: 'pagemap') CustomSearchPageMap pageMap}) {
    return _CustomSearchItem(
      kind: kind,
      title: title,
      htmlTitle: htmlTitle,
      link: link,
      displayLink: displayLink,
      snippet: snippet,
      htmlSnippet: htmlSnippet,
      cacheId: cacheId,
      formattedUrl: formattedUrl,
      htmlFormattedUrl: htmlFormattedUrl,
      pageMap: pageMap,
    );
  }
}

// ignore: unused_element
const $CustomSearchItem = _$CustomSearchItemTearOff();

mixin _$CustomSearchItem {
  String get kind;
  String get title;
  String get htmlTitle;
  String get link;
  String get displayLink;
  String get snippet;
  String get htmlSnippet;
  String get cacheId;
  String get formattedUrl;
  String get htmlFormattedUrl;
  @JsonKey(name: 'pagemap')
  CustomSearchPageMap get pageMap;

  Map<String, dynamic> toJson();
  $CustomSearchItemCopyWith<CustomSearchItem> get copyWith;
}

abstract class $CustomSearchItemCopyWith<$Res> {
  factory $CustomSearchItemCopyWith(
          CustomSearchItem value, $Res Function(CustomSearchItem) then) =
      _$CustomSearchItemCopyWithImpl<$Res>;
  $Res call(
      {String kind,
      String title,
      String htmlTitle,
      String link,
      String displayLink,
      String snippet,
      String htmlSnippet,
      String cacheId,
      String formattedUrl,
      String htmlFormattedUrl,
      @JsonKey(name: 'pagemap') CustomSearchPageMap pageMap});

  $CustomSearchPageMapCopyWith<$Res> get pageMap;
}

class _$CustomSearchItemCopyWithImpl<$Res>
    implements $CustomSearchItemCopyWith<$Res> {
  _$CustomSearchItemCopyWithImpl(this._value, this._then);

  final CustomSearchItem _value;
  // ignore: unused_field
  final $Res Function(CustomSearchItem) _then;

  @override
  $Res call({
    Object kind = freezed,
    Object title = freezed,
    Object htmlTitle = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object snippet = freezed,
    Object htmlSnippet = freezed,
    Object cacheId = freezed,
    Object formattedUrl = freezed,
    Object htmlFormattedUrl = freezed,
    Object pageMap = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed ? _value.kind : kind as String,
      title: title == freezed ? _value.title : title as String,
      htmlTitle: htmlTitle == freezed ? _value.htmlTitle : htmlTitle as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      snippet: snippet == freezed ? _value.snippet : snippet as String,
      htmlSnippet:
          htmlSnippet == freezed ? _value.htmlSnippet : htmlSnippet as String,
      cacheId: cacheId == freezed ? _value.cacheId : cacheId as String,
      formattedUrl: formattedUrl == freezed
          ? _value.formattedUrl
          : formattedUrl as String,
      htmlFormattedUrl: htmlFormattedUrl == freezed
          ? _value.htmlFormattedUrl
          : htmlFormattedUrl as String,
      pageMap:
          pageMap == freezed ? _value.pageMap : pageMap as CustomSearchPageMap,
    ));
  }

  @override
  $CustomSearchPageMapCopyWith<$Res> get pageMap {
    if (_value.pageMap == null) {
      return null;
    }
    return $CustomSearchPageMapCopyWith<$Res>(_value.pageMap, (value) {
      return _then(_value.copyWith(pageMap: value));
    });
  }
}

abstract class _$CustomSearchItemCopyWith<$Res>
    implements $CustomSearchItemCopyWith<$Res> {
  factory _$CustomSearchItemCopyWith(
          _CustomSearchItem value, $Res Function(_CustomSearchItem) then) =
      __$CustomSearchItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String title,
      String htmlTitle,
      String link,
      String displayLink,
      String snippet,
      String htmlSnippet,
      String cacheId,
      String formattedUrl,
      String htmlFormattedUrl,
      @JsonKey(name: 'pagemap') CustomSearchPageMap pageMap});

  @override
  $CustomSearchPageMapCopyWith<$Res> get pageMap;
}

class __$CustomSearchItemCopyWithImpl<$Res>
    extends _$CustomSearchItemCopyWithImpl<$Res>
    implements _$CustomSearchItemCopyWith<$Res> {
  __$CustomSearchItemCopyWithImpl(
      _CustomSearchItem _value, $Res Function(_CustomSearchItem) _then)
      : super(_value, (v) => _then(v as _CustomSearchItem));

  @override
  _CustomSearchItem get _value => super._value as _CustomSearchItem;

  @override
  $Res call({
    Object kind = freezed,
    Object title = freezed,
    Object htmlTitle = freezed,
    Object link = freezed,
    Object displayLink = freezed,
    Object snippet = freezed,
    Object htmlSnippet = freezed,
    Object cacheId = freezed,
    Object formattedUrl = freezed,
    Object htmlFormattedUrl = freezed,
    Object pageMap = freezed,
  }) {
    return _then(_CustomSearchItem(
      kind: kind == freezed ? _value.kind : kind as String,
      title: title == freezed ? _value.title : title as String,
      htmlTitle: htmlTitle == freezed ? _value.htmlTitle : htmlTitle as String,
      link: link == freezed ? _value.link : link as String,
      displayLink:
          displayLink == freezed ? _value.displayLink : displayLink as String,
      snippet: snippet == freezed ? _value.snippet : snippet as String,
      htmlSnippet:
          htmlSnippet == freezed ? _value.htmlSnippet : htmlSnippet as String,
      cacheId: cacheId == freezed ? _value.cacheId : cacheId as String,
      formattedUrl: formattedUrl == freezed
          ? _value.formattedUrl
          : formattedUrl as String,
      htmlFormattedUrl: htmlFormattedUrl == freezed
          ? _value.htmlFormattedUrl
          : htmlFormattedUrl as String,
      pageMap:
          pageMap == freezed ? _value.pageMap : pageMap as CustomSearchPageMap,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchItem
    with DiagnosticableTreeMixin
    implements _CustomSearchItem {
  _$_CustomSearchItem(
      {this.kind,
      this.title,
      this.htmlTitle,
      this.link,
      this.displayLink,
      this.snippet,
      this.htmlSnippet,
      this.cacheId,
      this.formattedUrl,
      this.htmlFormattedUrl,
      @JsonKey(name: 'pagemap') this.pageMap});

  factory _$_CustomSearchItem.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchItemFromJson(json);

  @override
  final String kind;
  @override
  final String title;
  @override
  final String htmlTitle;
  @override
  final String link;
  @override
  final String displayLink;
  @override
  final String snippet;
  @override
  final String htmlSnippet;
  @override
  final String cacheId;
  @override
  final String formattedUrl;
  @override
  final String htmlFormattedUrl;
  @override
  @JsonKey(name: 'pagemap')
  final CustomSearchPageMap pageMap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchItem(kind: $kind, title: $title, htmlTitle: $htmlTitle, link: $link, displayLink: $displayLink, snippet: $snippet, htmlSnippet: $htmlSnippet, cacheId: $cacheId, formattedUrl: $formattedUrl, htmlFormattedUrl: $htmlFormattedUrl, pageMap: $pageMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchItem'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('htmlTitle', htmlTitle))
      ..add(DiagnosticsProperty('link', link))
      ..add(DiagnosticsProperty('displayLink', displayLink))
      ..add(DiagnosticsProperty('snippet', snippet))
      ..add(DiagnosticsProperty('htmlSnippet', htmlSnippet))
      ..add(DiagnosticsProperty('cacheId', cacheId))
      ..add(DiagnosticsProperty('formattedUrl', formattedUrl))
      ..add(DiagnosticsProperty('htmlFormattedUrl', htmlFormattedUrl))
      ..add(DiagnosticsProperty('pageMap', pageMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchItem &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.htmlTitle, htmlTitle) ||
                const DeepCollectionEquality()
                    .equals(other.htmlTitle, htmlTitle)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.displayLink, displayLink) ||
                const DeepCollectionEquality()
                    .equals(other.displayLink, displayLink)) &&
            (identical(other.snippet, snippet) ||
                const DeepCollectionEquality()
                    .equals(other.snippet, snippet)) &&
            (identical(other.htmlSnippet, htmlSnippet) ||
                const DeepCollectionEquality()
                    .equals(other.htmlSnippet, htmlSnippet)) &&
            (identical(other.cacheId, cacheId) ||
                const DeepCollectionEquality()
                    .equals(other.cacheId, cacheId)) &&
            (identical(other.formattedUrl, formattedUrl) ||
                const DeepCollectionEquality()
                    .equals(other.formattedUrl, formattedUrl)) &&
            (identical(other.htmlFormattedUrl, htmlFormattedUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlFormattedUrl, htmlFormattedUrl)) &&
            (identical(other.pageMap, pageMap) ||
                const DeepCollectionEquality().equals(other.pageMap, pageMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(htmlTitle) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(displayLink) ^
      const DeepCollectionEquality().hash(snippet) ^
      const DeepCollectionEquality().hash(htmlSnippet) ^
      const DeepCollectionEquality().hash(cacheId) ^
      const DeepCollectionEquality().hash(formattedUrl) ^
      const DeepCollectionEquality().hash(htmlFormattedUrl) ^
      const DeepCollectionEquality().hash(pageMap);

  @override
  _$CustomSearchItemCopyWith<_CustomSearchItem> get copyWith =>
      __$CustomSearchItemCopyWithImpl<_CustomSearchItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchItemToJson(this);
  }
}

abstract class _CustomSearchItem implements CustomSearchItem {
  factory _CustomSearchItem(
          {String kind,
          String title,
          String htmlTitle,
          String link,
          String displayLink,
          String snippet,
          String htmlSnippet,
          String cacheId,
          String formattedUrl,
          String htmlFormattedUrl,
          @JsonKey(name: 'pagemap') CustomSearchPageMap pageMap}) =
      _$_CustomSearchItem;

  factory _CustomSearchItem.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchItem.fromJson;

  @override
  String get kind;
  @override
  String get title;
  @override
  String get htmlTitle;
  @override
  String get link;
  @override
  String get displayLink;
  @override
  String get snippet;
  @override
  String get htmlSnippet;
  @override
  String get cacheId;
  @override
  String get formattedUrl;
  @override
  String get htmlFormattedUrl;
  @override
  @JsonKey(name: 'pagemap')
  CustomSearchPageMap get pageMap;
  @override
  _$CustomSearchItemCopyWith<_CustomSearchItem> get copyWith;
}

CustomSearchPageMap _$CustomSearchPageMapFromJson(Map<String, dynamic> json) {
  return _CustomSearchPageMap.fromJson(json);
}

class _$CustomSearchPageMapTearOff {
  const _$CustomSearchPageMapTearOff();

// ignore: unused_element
  _CustomSearchPageMap call(
      {List<Map<String, dynamic>> thumbnail,
      @JsonKey(name: 'cse_thumbnail') List<Map<String, dynamic>> cseThumbnail,
      @JsonKey(name: 'metatags') List<Map<String, dynamic>> metaTags,
      @JsonKey(name: 'cse_image') List<Map<String, dynamic>> cseImage}) {
    return _CustomSearchPageMap(
      thumbnail: thumbnail,
      cseThumbnail: cseThumbnail,
      metaTags: metaTags,
      cseImage: cseImage,
    );
  }
}

// ignore: unused_element
const $CustomSearchPageMap = _$CustomSearchPageMapTearOff();

mixin _$CustomSearchPageMap {
  List<Map<String, dynamic>> get thumbnail;
  @JsonKey(name: 'cse_thumbnail')
  List<Map<String, dynamic>> get cseThumbnail;
  @JsonKey(name: 'metatags')
  List<Map<String, dynamic>> get metaTags;
  @JsonKey(name: 'cse_image')
  List<Map<String, dynamic>> get cseImage;

  Map<String, dynamic> toJson();
  $CustomSearchPageMapCopyWith<CustomSearchPageMap> get copyWith;
}

abstract class $CustomSearchPageMapCopyWith<$Res> {
  factory $CustomSearchPageMapCopyWith(
          CustomSearchPageMap value, $Res Function(CustomSearchPageMap) then) =
      _$CustomSearchPageMapCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> thumbnail,
      @JsonKey(name: 'cse_thumbnail') List<Map<String, dynamic>> cseThumbnail,
      @JsonKey(name: 'metatags') List<Map<String, dynamic>> metaTags,
      @JsonKey(name: 'cse_image') List<Map<String, dynamic>> cseImage});
}

class _$CustomSearchPageMapCopyWithImpl<$Res>
    implements $CustomSearchPageMapCopyWith<$Res> {
  _$CustomSearchPageMapCopyWithImpl(this._value, this._then);

  final CustomSearchPageMap _value;
  // ignore: unused_field
  final $Res Function(CustomSearchPageMap) _then;

  @override
  $Res call({
    Object thumbnail = freezed,
    Object cseThumbnail = freezed,
    Object metaTags = freezed,
    Object cseImage = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail as List<Map<String, dynamic>>,
      cseThumbnail: cseThumbnail == freezed
          ? _value.cseThumbnail
          : cseThumbnail as List<Map<String, dynamic>>,
      metaTags: metaTags == freezed
          ? _value.metaTags
          : metaTags as List<Map<String, dynamic>>,
      cseImage: cseImage == freezed
          ? _value.cseImage
          : cseImage as List<Map<String, dynamic>>,
    ));
  }
}

abstract class _$CustomSearchPageMapCopyWith<$Res>
    implements $CustomSearchPageMapCopyWith<$Res> {
  factory _$CustomSearchPageMapCopyWith(_CustomSearchPageMap value,
          $Res Function(_CustomSearchPageMap) then) =
      __$CustomSearchPageMapCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>> thumbnail,
      @JsonKey(name: 'cse_thumbnail') List<Map<String, dynamic>> cseThumbnail,
      @JsonKey(name: 'metatags') List<Map<String, dynamic>> metaTags,
      @JsonKey(name: 'cse_image') List<Map<String, dynamic>> cseImage});
}

class __$CustomSearchPageMapCopyWithImpl<$Res>
    extends _$CustomSearchPageMapCopyWithImpl<$Res>
    implements _$CustomSearchPageMapCopyWith<$Res> {
  __$CustomSearchPageMapCopyWithImpl(
      _CustomSearchPageMap _value, $Res Function(_CustomSearchPageMap) _then)
      : super(_value, (v) => _then(v as _CustomSearchPageMap));

  @override
  _CustomSearchPageMap get _value => super._value as _CustomSearchPageMap;

  @override
  $Res call({
    Object thumbnail = freezed,
    Object cseThumbnail = freezed,
    Object metaTags = freezed,
    Object cseImage = freezed,
  }) {
    return _then(_CustomSearchPageMap(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail as List<Map<String, dynamic>>,
      cseThumbnail: cseThumbnail == freezed
          ? _value.cseThumbnail
          : cseThumbnail as List<Map<String, dynamic>>,
      metaTags: metaTags == freezed
          ? _value.metaTags
          : metaTags as List<Map<String, dynamic>>,
      cseImage: cseImage == freezed
          ? _value.cseImage
          : cseImage as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable()
class _$_CustomSearchPageMap
    with DiagnosticableTreeMixin
    implements _CustomSearchPageMap {
  _$_CustomSearchPageMap(
      {this.thumbnail,
      @JsonKey(name: 'cse_thumbnail') this.cseThumbnail,
      @JsonKey(name: 'metatags') this.metaTags,
      @JsonKey(name: 'cse_image') this.cseImage});

  factory _$_CustomSearchPageMap.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomSearchPageMapFromJson(json);

  @override
  final List<Map<String, dynamic>> thumbnail;
  @override
  @JsonKey(name: 'cse_thumbnail')
  final List<Map<String, dynamic>> cseThumbnail;
  @override
  @JsonKey(name: 'metatags')
  final List<Map<String, dynamic>> metaTags;
  @override
  @JsonKey(name: 'cse_image')
  final List<Map<String, dynamic>> cseImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomSearchPageMap(thumbnail: $thumbnail, cseThumbnail: $cseThumbnail, metaTags: $metaTags, cseImage: $cseImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomSearchPageMap'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('cseThumbnail', cseThumbnail))
      ..add(DiagnosticsProperty('metaTags', metaTags))
      ..add(DiagnosticsProperty('cseImage', cseImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomSearchPageMap &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.cseThumbnail, cseThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.cseThumbnail, cseThumbnail)) &&
            (identical(other.metaTags, metaTags) ||
                const DeepCollectionEquality()
                    .equals(other.metaTags, metaTags)) &&
            (identical(other.cseImage, cseImage) ||
                const DeepCollectionEquality()
                    .equals(other.cseImage, cseImage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(cseThumbnail) ^
      const DeepCollectionEquality().hash(metaTags) ^
      const DeepCollectionEquality().hash(cseImage);

  @override
  _$CustomSearchPageMapCopyWith<_CustomSearchPageMap> get copyWith =>
      __$CustomSearchPageMapCopyWithImpl<_CustomSearchPageMap>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomSearchPageMapToJson(this);
  }
}

abstract class _CustomSearchPageMap implements CustomSearchPageMap {
  factory _CustomSearchPageMap(
      {List<Map<String, dynamic>> thumbnail,
      @JsonKey(name: 'cse_thumbnail')
          List<Map<String, dynamic>> cseThumbnail,
      @JsonKey(name: 'metatags')
          List<Map<String, dynamic>> metaTags,
      @JsonKey(name: 'cse_image')
          List<Map<String, dynamic>> cseImage}) = _$_CustomSearchPageMap;

  factory _CustomSearchPageMap.fromJson(Map<String, dynamic> json) =
      _$_CustomSearchPageMap.fromJson;

  @override
  List<Map<String, dynamic>> get thumbnail;
  @override
  @JsonKey(name: 'cse_thumbnail')
  List<Map<String, dynamic>> get cseThumbnail;
  @override
  @JsonKey(name: 'metatags')
  List<Map<String, dynamic>> get metaTags;
  @override
  @JsonKey(name: 'cse_image')
  List<Map<String, dynamic>> get cseImage;
  @override
  _$CustomSearchPageMapCopyWith<_CustomSearchPageMap> get copyWith;
}
